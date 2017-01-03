class CreateSiteConfigurations < ActiveRecord::Migration
  def change
    create_table :site_configurations do |t|
      t.string :name
      t.string :description
      t.string :bio
      t.string :contact_email
      t.string :contact_phone

      t.timestamps null: false
    end
  end
end
