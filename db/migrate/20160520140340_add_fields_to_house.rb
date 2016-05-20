class AddFieldsToHouse < ActiveRecord::Migration
  def change
    add_column :houses, :type, :string
    add_column :houses, :district, :string
    add_column :houses, :street, :string
    add_column :houses, :price, :integer
    add_column :houses, :room_quantity, :integer
    add_column :houses, :floor, :integer
    add_column :houses, :floor_quantity, :integer
  end
end
