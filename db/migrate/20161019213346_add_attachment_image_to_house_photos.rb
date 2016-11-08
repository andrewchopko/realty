class AddAttachmentImageToHousePhotos < ActiveRecord::Migration
  def self.up
    change_table :house_photos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :house_photos, :image
  end
end
