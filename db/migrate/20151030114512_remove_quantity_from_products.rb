class RemoveQuantityFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :quantity
  end

  def down
    add_column :products, :quantity, :integer
  end
end
