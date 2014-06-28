class AddAttachmentPhotoToAssets < ActiveRecord::Migration
  def self.up
    change_table :assets do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :assets, :photo
  end
end
