# coding: utf-8
class UpdateCacheJob < ApplicationJob
  class AllDataInvalidError < StandardError; end
  queue_as :default
  attr_reader(
    :expected_num_columns,
    :target_collection,
    :target_file,
    :required_cols,
    :update_period,
    :collections_api,
    :articles_api
  )

  def perform(*args)
    @expected_num_columns = 13
    @target_collection = 2861821
    @required_cols = ['set temperature (k)', 'set field (t)', 'set angle (°)']
    @update_period = 30.minutes
    @collections_api = SwaggerClient::CollectionsApi.new
    @articles_api = SwaggerClient::ArticlesApi.new

    begin
      robinson_collection.each do |article|
        cache(article_details(article.id))
      end
    ensure
      UpdateCacheJob.set(wait: update_period).perform_later
    end
  end

  def cache(article)
    return unless should_cache?(article)

    GC.start
    ActiveRecord::Base.transaction do
      dataset = dataset_from!(article)
      cache_dataset(dataset)
    end
  end

  def dataset_from!(article)
    Dataset.create!(
      figshare_id: article.id,
      title: article.title,
      doi: article.doi,
      url_api: article.url,
      url_public: article.url_public_html,
      thumbnail: article.thumb,
      defined_type: article.defined_type,
      published_date: article.published_date
    )
  end

  def cache_dataset(dataset)
    excel_files_details = article_files(dataset.figshare_id)
                            .select { |file| is_excel?(file) }

    excel_files_details.each do |file_details|
      cache_file(dataset, file_details)
    end
  end

  def cache_file(dataset, file_details)
    excel_file = download_excel_file(file_details)
    for sheetname in excel_file.sheets
      experiment = dataset.experiments.create!( experiment_params(sheetname, file_details.name) )
      sheet = excel_file.sheet(sheetname)

      rows = []
      header_map = nil
      sheet.each_with_index do |row, index|
        if index == 0
          header_map = parse_header(row)
          next
        end
        rows << experiment.rows.new( parse_row(row, header_map) )
      end
      Row.import rows
    end
  end

  def experiment_params(sheetname, filename)
    params = {
      set_temperature: nil,
      set_field: nil,
      set_angle: nil,
    }

    [sheetname, filename].map(&method(:parse_value)).each do |match|
      params[unit_to_name(match[2])] = match[1]
    end

    params
  end

  def parse_value(value)
    regex = /^(\d+\.?\d*)\s*(K|°|T|)/
    match = regex.match(value)

    match
  end

  def is_excel?(file_details)
    regex = /^(\d+\.?\d*)\s*(K|°|T|).*xlsx$/
    match = regex.match(file_details.name)

    match != nil
  end

  def unit_to_name(unit)
    if unit == 'K'
      return :set_temperature
    elsif unit == 'T'
      return :set_field
    elsif unit == '°' || unit == ''
      return :set_angle
    end

    throw Exception.new("Invalid unit")
    # Throw exception if bad
  end

  def parse_header(header)
    {
      temperature: header.find_index { |col| /^Temperature \(K\)$/i.match(col) != nil },
      field: header.find_index { |col| /^Field \(T\)$/i.match(col) != nil },
      angle: header.find_index { |col| /^Angle \(°\)$/i.match(col) != nil },
      icw: header.find_index { |col| /^Ic\/w \(A\/cm\)$/i.match(col) != nil },
      ic: header.find_index { |col| /^Ic \(A\)$/i.match(col) != nil },
      n: header.find_index { |col| /^n$/i.match(col) != nil },
      v0: header.find_index { |col| /^V0 \(µV\)$/i.match(col) != nil },
      v1: header.find_index { |col| /^V1 \(µV\/A\)$/i.match(col) != nil },
      hall_field: header.find_index { |col| /^Hall field \(T\)$/i.match(col) != nil },
      hall_angle: header.find_index { |col| /^Hall angle \(°\)$/i.match(col) != nil },
    }
  end

  def parse_row(row, header_map)
    row = row.map { |cell| cell unless cell == '--' }

    {
      temperature: get_row_value(row, header_map, :temperature),
      field: get_row_value(row, header_map, :field),
      angle: get_row_value(row, header_map, :angle),
      icw: get_row_value(row, header_map, :icw),
      ic: get_row_value(row, header_map, :ic),
      n: get_row_value(row, header_map, :n),
      v0: get_row_value(row, header_map, :v0),
      v1: get_row_value(row, header_map, :v1),
      hall_field: get_row_value(row, header_map, :hall_field),
      hall_angle: get_row_value(row, header_map, :hall_angle),
    }
  end

  def get_row_value(row, header_map, column)
    return nil if header_map[column] == nil

    row[header_map[column]]
  end

  def should_cache?(article)
    latest_dataset = Dataset.latest.find_by(figshare_id: article.id)
    latest_dataset.nil? || article.published_date > latest_dataset.created_at
  end

  def robinson_collection
    collections_api.collection_articles(target_collection, {page_size: 1000, page: 1})
  end

  def article_details(article_id)
    articles_api.article_details(article_id)
  end

  def article_files(article_id)
    articles_api.article_files(article_id)
  end

  def download_excel_file(file_details)
    file = Down.download(file_details.download_url)
    Roo::Spreadsheet.open(file.path, extension: :xlsx)
  end
end
