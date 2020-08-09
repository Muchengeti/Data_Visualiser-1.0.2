class CreateWithExperiments < ActiveRecord::Migration[5.1]
  def change
    create_table :datasets do |t|
      t.integer :figshare_id
      t.string :title
      t.string :doi
      t.string :url_api
      t.string :url_public
      t.string :thumbnail
      t.integer :defined_type
      t.datetime :published_date

      t.timestamps
    end

    create_table :experiments do |t|
      t.float :set_temperature
      t.float :set_field
      t.float :set_angle

      t.references :dataset, foreign_key: true, null: false

      t.timestamps
    end

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

      t.references :experiment, foreign_key: true, null: false

      t.timestamps
    end
  end
end
