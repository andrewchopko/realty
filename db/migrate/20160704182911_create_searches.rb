class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :realty_typ
      t.string :district
      t.string :street
      t.float :min_price
      t.float :max_price
      t.integer :min_room_quantity
      t.integer :max_room_quantity
      t.integer :min_floor
      t.integer :max_floor
      t.integer :min_floor_quantity
      t.integer :max_floor_quantity

      t.timestamps null: false
    end
  end
end
