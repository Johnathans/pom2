class AddAttachmentImageToHuskyBreeders < ActiveRecord::Migration
  def self.up
    change_table :husky_breeders do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :husky_breeders, :image
  end
end
