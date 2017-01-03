class CreatePropertyImageLocations < ActiveRecord::Migration
  def change
    create_table :property_image_locations do |t|
      t.string :file_location
      t.references :property, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
