class ExperimentSerializer < ActiveModel::Serializer
  attributes :set_temperature, :set_field, :set_angle
  attribute :rows
  attribute :row_header

  def row_header
    [
      :temperature,
      :field,
      :angle,
      :icw,
      :ic,
      :n,
      :v0,
      :v1,
      :hall_field,
      :hall_angle
    ]
  end

  def rows
    object.rows.map do |row|
      [
        row.temperature,
        row.field,
        row.angle,
        row.icw,
        row.ic,
        row.n,
        row.v0,
        row.v1,
        row.hall_field,
        row.hall_angle
      ]
    end
  end
end
