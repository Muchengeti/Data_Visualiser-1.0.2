class DatasetsController < ApplicationController

  def index
    respond_to do |format|
      format.json { render json: {
        datasets: ActiveModel::SerializableResource.new(Dataset.latest)
        }
      }
    end
  end

  def show
    dataset = Dataset.latest.find_by(figshare_id: dataset_params[:figshare_id])
    filtered_experiments = Datasets::FilterDatasetExperiments.new(dataset_params, dataset).call

    response = {
      filtered_experiments: ActiveModel::SerializableResource.new(filtered_experiments)
    }

    respond_to do |format|
      format.json { render json: response }
    end
  end

  def metadata
    dataset = Dataset.latest.find_by(figshare_id: dataset_params[:dataset_figshare_id])
    filters = Datasets::FindValidFilters.new(dataset_params, dataset.experiments).call

    response = {
      dataset_meta: ActiveModel::SerializableResource.new(dataset),
      filters: filters
    }

    respond_to do |format|
      format.json { render json: response }
    end
  end

  def dataset_params
    params.permit(:figshare_id, :dataset_figshare_id, :set_temperature, :set_angle, :set_field, :dependence)
  end
end
