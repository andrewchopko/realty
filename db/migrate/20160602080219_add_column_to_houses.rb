class AddColumnToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :square, :string, default: "-/-/-"
  end
end
