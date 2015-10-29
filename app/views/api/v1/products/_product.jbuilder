json.cache! ['v1', product, product.created_by] do
  json.sku          product.sku
  json.name         product.name
  json.description  product.description
  json.price        humanized_money_with_symbol(product.price)
  json.quantity     product.quantity

  if product.created_by
    json.created_by do
      json.id     product.created_by.id
      json.email  product.created_by.email
    end
  end
end

