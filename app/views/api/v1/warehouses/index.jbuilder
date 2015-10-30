json.warehouses do
  json.array! @warehouses do |warehouse|
    json.id   warehouse.id
    json.name warehouse.name
  end
end
