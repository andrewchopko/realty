class RemoveTypeOfHouseFromHouses < ActiveRecord::Migration
  def change
    remove_column :houses, :type_of_house, :string
  end
end
