class CreateGardens < ActiveRecord::Migration[6.1]
  def change
    create_table :gardens do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
