class RemoveTypeOfRealtyFromHouses < ActiveRecord::Migration
  def change
    remove_column :houses, :type_of_realty, :string
  end
end
