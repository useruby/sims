class ProductLocation < ActiveRecord::Base
  belongs_to :warehouse
  belongs_to :product

  validates_uniqueness_of :warehouse_id, scope: :product_id
  validates_presence_of :warehouse_id

  validates :quantity, numericality: {greater_than_or_equal_to: 0}
end
