class AddLong2 < ActiveRecord::Migration
  def change
    add_column :properties, :longitude, :float
  end
end
