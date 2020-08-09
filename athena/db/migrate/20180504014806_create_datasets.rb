class CreateDatasets < ActiveRecord::Migration[5.1]
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
  end
end
