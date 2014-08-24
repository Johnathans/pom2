class CreatePomeranianBreeders < ActiveRecord::Migration
  def change
    create_table :pomeranian_breeders do |t|
      t.string :name
      t.string :website
      t.string :email
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
