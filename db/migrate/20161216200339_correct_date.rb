class CorrectDate < ActiveRecord::Migration
  def change
    rename_column :properties, :availale_date, :available_date
  end
end
