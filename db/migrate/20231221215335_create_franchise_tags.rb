class CreateFranchiseTags < ActiveRecord::Migration[7.1]
  def change
    create_table :franchise_tags do |t|
      t.references :franchise, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
