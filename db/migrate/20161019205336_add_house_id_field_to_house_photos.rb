class AddHouseIdFieldToHousePhotos < ActiveRecord::Migration
  def change
    add_column :house_photos, :house_id, :integer
  end
end
