class Product < ActiveRecord::Base
  monetize :price_cents, allow_nil: true, numericality: {greater_than_or_equal_to: 0}

  validates :sku, presence: true, 
                  uniqueness: true,
                  format: {with: /\AB00[0-9|A-Z]{7}\z/i}

  validates :name, presence: true, length: {maximum: 250}
  validates :description, length: {maximum: 1024}

  validates_associated :product_locations

  belongs_to :created_by, class_name: User

  has_many :product_locations, dependent: :destroy
  has_many :warehouses, through: :product_locations

  accepts_nested_attributes_for :product_locations, allow_destroy: true

  # FIXME on_stock and out_of_stock methods can be way too slow if number 
  # of products will be a big enough
  def self.on_stock
    Product.all.select{|product| product.quantity > 0}
  end

  def self.out_of_stock
    Product.all.select{|product| product.quantity == 0}
  end

  def quantity
    product_locations.sum(:quantity) 
  end

  def created_by?(user)
    created_by == user
  end
end
