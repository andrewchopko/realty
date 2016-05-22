class AddCategoryIdToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :category_id, :integer
  end
end
