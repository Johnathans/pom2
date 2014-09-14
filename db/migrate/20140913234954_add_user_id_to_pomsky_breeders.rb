class AddUserIdToPomskyBreeders < ActiveRecord::Migration
  def change
    add_column :pomsky_breeders, :user_id, :integer
    add_index :pomsky_breeders, :user_id
  end
end
