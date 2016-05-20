class ChangeFieldTypeInHouse < ActiveRecord::Migration
  def change
    rename_column :houses, :type, :type_of_realty
  end
end
