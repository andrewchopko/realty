class DeleteSquareInHouses < ActiveRecord::Migration
  def change
    remove_column :houses, :square

    add_column :houses, :square_all, :float
    add_column :houses, :square_kitchen, :float
    add_column :houses, :square_live, :float
    
  end
end
