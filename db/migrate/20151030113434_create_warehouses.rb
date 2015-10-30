class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.string :name, limit: 250

      t.timestamps null: false
    end
  end
end
