class CorrectProperties < ActiveRecord::Migration
  def change
    remove_column :properties, :image
    add_column :properties, :image_id, :string
  end
end
