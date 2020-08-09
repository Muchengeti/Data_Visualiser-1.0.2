class RowSerializer < ActiveModel::Serializer
  attributes :temperature, :field, :angle,
             :icw, :ic, :n, :v0, :v1,
             :hall_field, :hall_angle,
             :set_temperature, :set_field, :set_angle
end
