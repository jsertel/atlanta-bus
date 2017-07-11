class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :street_address
      t.string :city
      t.float :latitude
      t.string :longitude
      

      t.timestamps
    end
  end
end
