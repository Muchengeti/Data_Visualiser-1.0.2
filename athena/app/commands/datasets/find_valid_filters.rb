class Datasets::FindValidFilters
  def initialize(params, experiments)
    @params = params
    @experiments = experiments
  end

  def call
    temperature_dependence = uniqConstantsForDependence('set_temperature', @experiments)
    angle_dependence = uniqConstantsForDependence('set_angle', @experiments)
    field_dependence = uniqConstantsForDependence('set_field', @experiments)

    { 
    	temperature_dependence: temperature_dependence,
    	angle_dependence: angle_dependence,
    	field_dependence: field_dependence 
    }
  end

  def uniqConstantsForDependence(dependence, experiments)
    e = experiments.select{ |exp| exp[dependence] == nil }

    valid_temps = e.pluck(:set_temperature).uniq.sort
    valid_angles = e.pluck(:set_angle).uniq.sort
    valid_fields = e.pluck(:set_field).uniq.sort

    { 
    	valid_temperatures: valid_temps,
    	valid_angles: valid_angles,
    	valid_fields: valid_fields 
    }
  end
end
