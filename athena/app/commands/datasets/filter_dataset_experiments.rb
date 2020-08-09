class Datasets::FilterDatasetExperiments
  def initialize(params, dataset)
    @params = params
    @dataset = dataset
  end

  def call
    if filter_params.empty?
      unique(@dataset.experiments.all)
    else
      unique(@dataset.experiments.where(filter_params))
    end
  end

  private

  def unique(experiments)
    experiments.uniq { |e| [e.set_temperature, e.set_angle, e.set_field] }
  end

  def filter_params
    params = @params.permit(:set_temperature, :set_angle, :set_field)
      .to_hash.compact

    params["set_#{@params[:dependence]}".to_sym] = nil if @params[:dependence].present?

    params
  end
end
