class RemoveFieldsFromSearch < ActiveRecord::Migration
  def change
    remove_column :searches, :name, :string
    remove_column :searches, :title, :string
    remove_column :searches, :description, :text
    remove_column :searches, :price, :integer
    remove_column :searches, :room_quantity, :integer
    remove_column :searches, :floor, :integer
  end
end
