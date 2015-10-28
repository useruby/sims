class Product < ActiveRecord::Base
  monetize :price_cents, allow_nil: true, numericality: {greater_than_or_equal_to: 0}

  scope :on_stock, ->{where('quantity > 0')}
  scope :out_of_stock, ->{where(quantity: 0)}

  validates :sku, presence: true, 
                  uniqueness: true,
                  format: {with: /\AB00[0-9|A-Z]{7}\z/i}

  validates :name, presence: true, length: {maximum: 250}
  validates :description, length: {maximum: 1024}

  validates :quantity, numericality: {greater_than_or_equal_to: 0}
end
