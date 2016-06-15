class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string   :name
      t.string   :title
      t.text     :description
      t.string   :district
      t.string   :street
      t.integer  :price
      t.integer  :room_quantity
      t.integer  :floor

      t.timestamps null: false
    end
  end
end
