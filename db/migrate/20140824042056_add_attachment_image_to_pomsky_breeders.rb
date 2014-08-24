class AddAttachmentImageToPomskyBreeders < ActiveRecord::Migration
  def self.up
    change_table :pomsky_breeders do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :pomsky_breeders, :image
  end
end
