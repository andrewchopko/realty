class AddHouseIdToCallbacks < ActiveRecord::Migration
  def change
    add_column :callbacks, :house_id, :integer
  end
end
