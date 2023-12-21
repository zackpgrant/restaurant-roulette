class RemoveNameFromRestaurants < ActiveRecord::Migration[7.1]
  def change
    remove_column :restaurants, :name, :string
  end
end
