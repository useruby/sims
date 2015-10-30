json.cache! ['v1', product] do
  json.sku          product.sku
  json.name         product.name
  json.description  product.description
  json.price        humanized_money_with_symbol(product.price)
  json.quantity     product.quantity
end

if product.created_by
  json.created_by do
    json.id     product.created_by.id
    json.email  product.created_by.email
  end
end

json.product_locations do
  json.array! product.product_locations do |location|
    json.warehouse  location.warehouse.name
    json.quantity   location.quantity
  end
end

