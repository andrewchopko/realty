class CreateHousePhotos < ActiveRecord::Migration
  def change
    create_table :house_photos do |t|

      t.timestamps null: false
    end
  end
end
