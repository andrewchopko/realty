class CreateCallbacks < ActiveRecord::Migration
  def change
    create_table :callbacks do |t|
      t.string :name
      t.integer :number

      t.timestamps null: false
    end
  end
end
