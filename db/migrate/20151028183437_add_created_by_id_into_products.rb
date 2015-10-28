class AddCreatedByIdIntoProducts < ActiveRecord::Migration
  def change
    add_reference :products, :created_by
  end
end
