require 'rails_helper'

describe ProductLocation do
  let(:product) { FactoryGirl.create(:product_01, locations: { main_warehouse => 4 }) }
  let(:main_warehouse) { FactoryGirl.create(:main_warehouse) }
  let(:second_facility) { FactoryGirl.create(:second_facility) }

  describe 'validations' do
    it 'should be invalid if product already have record with specified warehouse' do
      expect(
        ProductLocation.new(warehouse_id: main_warehouse.id, product_id: product.id, quantity: 1)
      ).to be_invalid_with_fields(:warehouse_id)
    end

    it 'should be invalid if warehouse is not specified' do
      expect(ProductLocation.new(product_id: product.id, quantity: 1))
        .to be_invalid_with_fields(:warehouse_id)
    end

    it 'should be invalid if quantity less than zero' do
      expect(
        ProductLocation.new(product_id: product.id, warehouse_id: second_facility.id, quantity: -1)
      ).to be_invalid_with_fields(:quantity)
    end

    it 'should be valid' do
      expect(
        ProductLocation.new(product_id: product.id, warehouse_id: second_facility.id, quantity: 1)
      ).to be_valid
    end
  end
end
