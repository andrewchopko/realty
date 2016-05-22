class AddFieldToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :type_of_house, :string
  end
end
