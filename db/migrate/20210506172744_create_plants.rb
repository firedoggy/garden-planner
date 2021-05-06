class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :common_name
      t.string :scientific_name
      t.integer :api_id

      t.timestamps
    end
  end
end
