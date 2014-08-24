class AddAttachmentImageToPomeranianBreeders < ActiveRecord::Migration
  def self.up
    change_table :pomeranian_breeders do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :pomeranian_breeders, :image
  end
end
