class CreateProductLocations < ActiveRecord::Migration
  def change
    create_table :product_locations do |t|
      t.references :product
      t.references :warehouse
      t.integer    :quantity

      t.timestamps null: false
    end

    add_index(:product_locations, [:product_id, :warehouse_id])
  end
end
