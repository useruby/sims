require 'rails_helper'

describe Product do
  let(:main_warehouse){FactoryGirl.create(:main_warehouse)}
  let(:second_facility){FactoryGirl.create(:second_facility)}

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

    it 'should be invalid if quantity of product in warehouse is less than zero' do
      expect(FactoryGirl.create(:product_01, locations: {main_warehouse => -4})).to be_invalid
    end
  end

  describe 'products availability in stock' do
    let!(:product_01) do 
      FactoryGirl.create(:product_01, locations: {main_warehouse => 5, second_facility => 4})
    end

    let!(:product_02){FactoryGirl.create(:product_02)}
    let!(:product_03){FactoryGirl.create(:product_03, locations: {main_warehouse => 5})}

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

  describe '#quantity' do
    let(:product) do 
      FactoryGirl.create(:product_01, locations: {main_warehouse => 5, second_facility => 4})
    end

    let(:out_of_stock_product){FactoryGirl.create(:product_02)}

    it 'should sum quantity from all the warehouse' do
      expect(product.quantity).to eq(9) 
    end

    it 'should return 0 if product is not stored in the any locations' do
      expect(out_of_stock_product.quantity).to eq(0)
    end
  end
end
