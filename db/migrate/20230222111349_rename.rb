class Rename < ActiveRecord::Migration[7.0]
  def change
    rename_column :restaurants, :adress, :address
  end
end
