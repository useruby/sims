def expect_product_to_be_eq_to_serialization(product, serialization)
  %w(sku name description quantity).each do |attr_name|
    expect(serialization[attr_name]).to eq(product.send(attr_name))
  end

  expect(serialization['price']).to eq(product.price.format)

  expect(serialization['created_by']).to be_present
  expect(serialization['created_by']['id']).to eq(product.created_by.id)
  expect(serialization['created_by']['email']).to eq(product.created_by.email)

  product.product_locations.each_with_index do |location, index|
    expect(serialization['product_locations'][index]['warehouse']).to eq(location.warehouse.name)
    expect(serialization['product_locations'][index]['quantity']).to eq(location.quantity)
  end
end
