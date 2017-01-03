class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :location
      t.boolean :available
      t.date :availale_date
      t.float :rent

      t.timestamps null: false
    end
  end
end
