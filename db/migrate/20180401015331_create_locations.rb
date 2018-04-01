class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :formatted_address
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
    add_index :locations, [:latitude, :longitude], unique: true
  end
end
