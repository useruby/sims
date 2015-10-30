class ProductLocation < ActiveRecord::Base
  belongs_to :warehouse
  belongs_to :product

  validates :quantity, numericality: {greater_than_or_equal_to: 0}
end
