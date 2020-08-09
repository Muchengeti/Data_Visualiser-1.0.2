class CreateRows < ActiveRecord::Migration[5.1]
  def change
    create_table :rows do |t|
      t.float :temperature
      t.float :field
      t.float :angle
      t.float :icw
      t.float :ic
      t.float :n
      t.float :v0
      t.float :v1
      t.float :hall_field
      t.float :hall_angle
      t.float :set_temperature
      t.float :set_field
      t.float :set_angle

      t.references :dataset, foreign_key: true, null: false

      t.timestamps
    end
  end
end
