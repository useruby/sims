class ProductLocation < ActiveRecord::Base
  belongs_to :warehouse
  belongs_to :product

  validates :warehouse_id, uniqueness: { scope: :product_id }
  validates :warehouse_id, presence: true

  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
end
