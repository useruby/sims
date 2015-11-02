require 'rspec_api_documentation/dsl'

resource 'Products' do
  let(:user) { FactoryGirl.create(:user) }
  let(:admin) { FactoryGirl.create(:admin) }

  let(:main_warehouse) { FactoryGirl.create(:main_warehouse) }
  let(:second_facility) { FactoryGirl.create(:second_facility) }
 
  get '/api/v1/products' do
    example 'Get list of all products' do
      products = [
        FactoryGirl.create(
          :product_01, created_by_id: admin.id,
                       locations: { main_warehouse => 5, second_facility => 4 }
        ),
        FactoryGirl.create(:product_02, created_by_id: admin.id),
        FactoryGirl.create(
          :product_03, created_by_id: admin.id,
                       locations: { main_warehouse => 5 }
        )
      ]

      auth_headers_for(user)

      do_request

      expect(status).to eq(200)

      response_attrs = JSON.parse(response_body)

      products_from_response = response_attrs['products']

      expect(products.size).to eq(3)

      products_from_response.each_with_index do |product, index|
        expect_product_to_be_eq_to_serialization(products[index], product)
      end
    end
  end

  get '/api/v1/products/:id' do
    parameter :id, 'product id', required: true

    let(:product) { FactoryGirl.create(:product_01, created_by_id: user.id, locations: { main_warehouse => 3 }) }

    example 'Get product by id' do
      auth_headers_for(user)

      do_request(id: product.id)

      expect(status).to eq(200)

      expect_product_to_be_eq_to_serialization(product, JSON.parse(response_body))
    end
  end

  post '/api/v1/products' do
    parameter :sku, 'product sku in the predefined format', required: true
    parameter :name, 'product name (maximum 250 characters)', required: true
    parameter :description, 'product description (maximum 1024 characters)'
    parameter :price, 'product price in USD'
    parameter :product_locations_attributes, 'array where each element contains warehouse_id and quantity'

    example 'Create a new product' do
      auth_headers_for(user)

      product_locations = [
        { warehouse_id: main_warehouse.id, quantity: 5 },
        { warehouse_id: second_facility.id, quantity: 4 }
      ]

      product_attrs = FactoryGirl.attributes_for(:product_01)
                      .merge(product_locations_attributes: product_locations)

      do_request(product_attrs)

      expect(status).to eq(200)

      product = Product.find_by(sku: product_attrs[:sku], created_by_id: user)

      expect(product).to be_present
      expect(product.quantity).to eq(9)
      expect(product.product_locations.size).to be(2)
    end
  end

  put '/api/v1/products/:id' do
    parameter :id, 'product id', required: true
    parameter :sku, 'product sku in the predefined format'
    parameter :name, 'product name (maximum 250 characters)'
    parameter :description, 'product description (maximum 1024 characters)'
    parameter :price, 'product price in USD'
    parameter :product_locations_attributes, 'array where each element contains id, warehouse_id and quantity'

    let(:product) do
      FactoryGirl.create(
        :product_01, created_by_id: user.id,
                     locations: { main_warehouse => 1, second_facility => 4 }
      )
    end

    example 'Update product information' do
      auth_headers_for(user)

      do_request(id: product.id, name: "Updated: #{product.name}")

      expect(status).to eq(200)

      expect_product_to_be_eq_to_serialization(product.reload, JSON.parse(response_body))
      expect(product.name).to be_start_with('Updated: ')
    end

    example 'Updated quantity of product on main warehouse' do
      auth_headers_for(user)

      main_warehouse_location = product.product_locations.find_by(warehouse_id: main_warehouse.id)

      do_request(
        id: product.id,
        product_locations_attributes: [
          {
            id: main_warehouse_location.id,
            quantity: main_warehouse_location.quantity + 5
          }
        ]
      )

      expect(status).to eq(200)

      expect_product_to_be_eq_to_serialization(product.reload, JSON.parse(response_body))

      expect(product.product_locations.size).to eq(2)
      expect(product.quantity).to eq(10)
      expect(main_warehouse_location.reload.quantity).to eq(6)
    end

    example 'Remove product from the warehouse' do
      auth_headers_for(user)

      main_warehouse_location = product.product_locations.find_by(warehouse_id: main_warehouse.id)

      do_request(
        id: product.id,
        product_locations_attributes: [
          {
            id: main_warehouse_location.id,
            _destroy: true
          }
        ]
      )

      expect(status).to eq(200)

      expect_product_to_be_eq_to_serialization(product.reload, JSON.parse(response_body))

      expect(product.product_locations.size).to eq(1)
      expect(product.quantity).to eq(4)
    end

    example 'Update quantity when location is not match the product', document: false do
      auth_headers_for(user)

      location = ProductLocation.create(
        warehouse_id: main_warehouse.id,
        product_id: FactoryGirl.create(:product_02, created_by_id: admin.id).id,
        quantity: 7
      )

      do_request(
        id: product.id,
        product_locations_attributes: [
          {
            id: location.id,
            quantity: 10
          }
        ]
      )

      expect(status).to eq(404)

      expect(product.reload.product_locations.size).to eq(2)
      expect(product.quantity).to eq(5)
      expect(location.reload.quantity).to eq(7)
    end

    example 'Update product with invalid information', document: false do
      auth_headers_for(user)

      do_request(id: product.id, name: '')

      expect(status).to eq(400)

      expect(response_body).to eq({ error: { name: ["can't be blank"] } }.to_json)
      expect(product.reload.name).to_not be_empty
    end

    example 'Update product with non exists id', document: false do
      auth_headers_for(user)

      do_request(id: 1)

      expect(status).to eq(404)

      expect(response_body).to eq({ error: "Couldn't find Product with 'id'=1" }.to_json)
    end

    example 'Update product by not owner', document: false do
      auth_headers_for(FactoryGirl.create(:user, email: Faker::Internet.email))

      do_request(id: product.id, name: "Updated: #{product.name}")

      expect(status).to eq(401)

      expect(response_body).to eq({ error: 'You are not authorized to access this page.' }.to_json)
      expect(product.reload.name).to_not be_start_with('Updated: ')
    end

    example 'Update product by admin', document: false do
      auth_headers_for(admin)

      do_request(id: product.id, name: "Updated: #{product.name}")

      expect(status).to eq(200)

      expect_product_to_be_eq_to_serialization(product.reload, JSON.parse(response_body))
      expect(product.name).to be_start_with('Updated: ')
    end
  end

  delete '/api/v1/products/:id' do
    parameter :id, 'product id', required: true

    let(:product) do
      FactoryGirl.create(
        :product_01, created_by_id: user.id,
                     locations: { main_warehouse => 3 }
      )
    end

    example 'Delete product' do
      auth_headers_for(user)

      do_request(id: product.id)

      expect(status).to eq(200)

      expect(response_body).to eq({}.to_json)
      expect(Product).to_not be_exists(product.id)
    end

    example 'Delete product with locations', document: false do
      auth_headers_for(user)

      do_request(id: product.id)

      expect(status).to eq(200)

      expect(response_body).to eq({}.to_json)

      expect(Product).to_not be_exists(product.id)
      expect(ProductLocation).to_not be_exists(product_id: product.id)
      expect(Warehouse).to be_exists(main_warehouse.id)
    end

    example 'Delete product with non exists id', document: false do
      auth_headers_for(user)

      do_request(id: 1)

      expect(status).to eq(404)

      expect(response_body).to eq({ error: "Couldn't find Product with 'id'=1" }.to_json)
    end

    example 'Delete product by not owner', document: false do
      auth_headers_for(FactoryGirl.create(:user, email: Faker::Internet.email))

      do_request(id: product.id)

      expect(status).to eq(401)

      expect(response_body).to eq({ error: 'You are not authorized to access this page.' }.to_json)
      expect(Product).to be_exists(product.id)
    end

    example 'Delete product by admin', document: false do
      auth_headers_for(admin)

      do_request(id: product.id)

      expect(status).to eq(200)

      expect(response_body).to eq({}.to_json)
      expect(Product).to_not be_exists(product.id)
    end
  end
end
