class AddLatLong < ActiveRecord::Migration
  def change
    add_column :properties, :latitude, :float
  end
end
