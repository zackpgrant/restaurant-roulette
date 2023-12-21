class DropRestaurantTags < ActiveRecord::Migration[7.1]
  def change
    drop_table :restaurant_tags
  end
end
