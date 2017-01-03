class AddImage < ActiveRecord::Migration
  def change
    remove_column :properties, :image, :string
    add_attachment :properties, :image
  end
end
