require 'rails_helper'

describe Product do
  describe 'validations' do
    it 'should be invalid if sku is empty' do
      expect(FactoryGirl.build(:product_01, sku: '')).to be_invalid
    end

    it 'should be invalid if sku is not unique' do
      expect(FactoryGirl.create(:product_01))
      expect(FactoryGirl.build(:product_01)).to be_invalid
    end

    it 'should be invalid if sku in the wrong format' do
      expect(FactoryGirl.build(:product_01, sku: 'A1A3NVCDSE')).to be_invalid
    end

    it 'should be invalid if name is empty' do
      expect(FactoryGirl.build(:product_01, name: '')).to be_invalid
    end

    it 'should be invalid if price is less than zero' do
      expect(FactoryGirl.build(:product_01, price: -10)).to be_invalid
    end

    it 'should be invalid if quantity is less than zero' do
      expect(FactoryGirl.build(:product_01, quantity: -2)).to be_invalid
    end
  end

  describe 'scopes' do
    %i{product_01 product_02 product_03}.each do |product_name|
      let!(product_name){FactoryGirl.create(product_name)}
    end

    describe '.on_stock' do
      it 'should return product that is on stock' do
        products = Product.on_stock

        expect(products).to include(product_01)
        expect(products).to include(product_03)
      end
    end

    describe '.out_of_stock' do
      it 'should return product that is out of stock' do
        products = Product.out_of_stock

        expect(products).to include(product_02)
      end
    end
  end
end
