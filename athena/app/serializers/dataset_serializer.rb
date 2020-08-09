class DatasetSerializer < ActiveModel::Serializer
  attributes :figshare_id,
              :title,
              :doi,
              :url_api,
              :url_public,
              :thumbnail,
              :defined_type,
              :published_date

  attribute :dataset_valid?, key: :cached
end
