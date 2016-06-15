class AddFieldsToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :min_price, :decimal
    add_column :searches, :max_price, :decimal
    add_column :searches, :min_floor, :integer
    add_column :searches, :max_floor, :integer
    add_column :searches, :min_floor_quantity, :integer
    add_column :searches, :max_floor_quantity, :integer
    add_column :searches, :min_room, :integer
    add_column :searches, :max_room, :integer
  end
end
