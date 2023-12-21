class AddFranchiseToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_reference :restaurants, :franchise, null: false, foreign_key: true
  end
end
