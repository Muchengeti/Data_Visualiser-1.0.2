class DropDatasetAndDatarows < ActiveRecord::Migration[5.1]
  def change
    drop_table :rows
    drop_table :datasets
  end
end
