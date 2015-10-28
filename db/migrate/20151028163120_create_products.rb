class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string    :sku, null: false
      t.string    :name, null: false, limit: 250
      t.string    :description, limit: 1024
      t.monetize  :price
      t.integer   :quantity, default: 0

      t.timestamps null: false
    end

    add_index(:products, :sku)
  end
end
