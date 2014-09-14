class AddUserIdToPomeranianBreeders < ActiveRecord::Migration
  def change
    add_column :pomeranian_breeders, :user_id, :integer
    add_index :pomeranian_breeders, :user_id
  end
end
