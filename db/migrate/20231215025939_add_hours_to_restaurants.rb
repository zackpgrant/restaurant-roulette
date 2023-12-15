class AddHoursToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :hours, :text, null: false
  end
end
