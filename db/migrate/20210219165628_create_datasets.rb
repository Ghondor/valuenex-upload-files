class CreateDatasets < ActiveRecord::Migration[6.0]
  def change
    create_table :datasets do |t|
      t.string :data_id
      t.string :name
      t.string :timestamp

      t.timestamps
    end
  end
end
