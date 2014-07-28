class AddUserIdToHuskyBreeders < ActiveRecord::Migration
  def change
    add_column :husky_breeders, :user_id, :integer
    add_index :husky_breeders, :user_id
  end
end
