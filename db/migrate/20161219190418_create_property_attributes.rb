class CreatePropertyAttributes < ActiveRecord::Migration
  def change
    create_table :property_attributes do |t|
      t.integer :property_id
      t.string :key
      t.string :value

      t.timestamps null: false
    end
  end
end
