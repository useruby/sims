RSpec::Matchers.define :be_eq_to_serialization do |attrs|
  match do |product|
    %w{sku name description quantity}.each do |attr_name|
      expect(attrs[attr_name]).to eq(product.send(attr_name))
    end

    expect(attrs['price']).to eq(product.price.format)

    expect(attrs['created_by']).to be_present
    expect(attrs['created_by']['id']).to eq(product.created_by.id)
    expect(attrs['created_by']['email']).to eq(product.created_by.email)
  end
end

