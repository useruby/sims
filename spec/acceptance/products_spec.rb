require 'rspec_api_documentation/dsl'

resource "Product" do
  let(:user){FactoryGirl.create(:user)}
  let(:admin){FactoryGirl.create(:admin)}
  
  def auth_headers_for(user)
    user.create_new_auth_token.each do |key, value|
      header key, value
    end
  end
 
  get "/api/v1/products" do
    example "Get list of all products" do
      products = %i{product_01 product_02 product_03}.map do |product_name|
        FactoryGirl.create(product_name, created_by: admin)
      end

      auth_headers_for(user)

      do_request

      expect(status).to eq(200)

      response_attrs = JSON.parse(response_body)

      products_from_response = response_attrs['products']

      expect(products.size).to eq(3)

      products_from_response.each_with_index do |product, index|
        expect(products[index]).to be_eq_to_serialization(product)
      end
    end
  end

  get "/api/v1/products/:id" do
    parameter :id, "product id", required: true

    let(:product){FactoryGirl.create(:product_01, created_by_id: user.id)}

    example "Get product by id" do
      auth_headers_for(user)
      
      do_request(id: product.id)

      expect(status).to eq(200)

      expect(product).to be_eq_to_serialization(JSON.parse(response_body))
    end
  end

  post "/api/v1/products" do
    parameter :sku, "product sku in the predefined format", required: true
    parameter :name, "product name (maximum 250 characters)", required: true
    parameter :description, "product description (maximum 1024 characters)"
    parameter :price, "product price in USD"
    parameter :quantity, "product available quantity"

    example "Create a new product" do 
      auth_headers_for(user)

      product_attrs = FactoryGirl.attributes_for(:product_01)
      
      do_request(product_attrs)

      expect(status).to eq(200)

      expect(Product).to be_exists(sku: product_attrs[:sku], created_by_id: user)
    end
  end

  put "/api/v1/products/:id" do
    parameter :id, "product id", required: true
    parameter :sku, "product sku in the predefined format"
    parameter :name, "product name (maximum 250 characters)"
    parameter :description, "product description (maximum 1024 characters)"
    parameter :price, "product price in USD"
    parameter :quantity, "product available quantity"

    let(:product){FactoryGirl.create(:product_01, created_by_id: user.id)}
    
    example "Update product information" do
      auth_headers_for(user)

      do_request(id: product.id, name: "Updated: #{product.name}")

      expect(status).to eq(200)

      expect(product.reload).to be_eq_to_serialization(JSON.parse(response_body))
      expect(product.name).to be_start_with("Updated: ") 
    end

    example "Update product with invalid information", document: false do
      auth_headers_for(user)

      do_request(id: product.id, name: "")

      expect(status).to eq(400)

      expect(response_body).to eq({error: {name: ["can't be blank"]}}.to_json)
      expect(product.reload.name).to_not be_empty
    end

    example "Update product with non exists id", document: false do
      auth_headers_for(user)
     
      do_request(id: 1)

      expect(status).to eq(404)

      expect(response_body).to eq({error: "Couldn't find Product with 'id'=1"}.to_json)
    end

    example "Update product by not owner", document: false do
      auth_headers_for(FactoryGirl.create(:user, email: Faker::Internet.email))
     
      do_request(id: product.id, name: "Updated: #{product.name}")

      expect(status).to eq(401)

      expect(response_body).to eq({error: "You are not authorized to access this page."}.to_json)
      expect(product.reload.name).to_not be_start_with("Updated: ") 
    end

    example "Update product by admin", document: false do
      auth_headers_for(admin)
     
      do_request(id: product.id, name: "Updated: #{product.name}")

      expect(status).to eq(200)

      expect(product.reload).to be_eq_to_serialization(JSON.parse(response_body))
      expect(product.name).to be_start_with("Updated: ") 
    end
  end

  delete "/api/v1/products/:id" do
    parameter :id, "product id", required: true

    let(:product){FactoryGirl.create(:product_01, created_by_id: user.id)}

    example "Delete product" do
      auth_headers_for(user)
     
      do_request(id: product.id)

      expect(status).to eq(200)

      expect(response_body).to eq({}.to_json)
      expect(Product).to_not be_exists(product.id)
    end

    example "Delete product with non exists id", document: false do
      auth_headers_for(user)
     
      do_request(id: 1)

      expect(status).to eq(404)

      expect(response_body).to eq({error: "Couldn't find Product with 'id'=1"}.to_json)
    end

    example "Delete product by not owner", document: false do
      auth_headers_for(FactoryGirl.create(:user, email: Faker::Internet.email))
     
      do_request(id: product.id)

      expect(status).to eq(401)

      expect(response_body).to eq({error: "You are not authorized to access this page."}.to_json)
      expect(Product).to be_exists(product.id)
    end

    example "Delete product by admin", document: false do
      auth_headers_for(admin)
     
      do_request(id: product.id)

      expect(status).to eq(200)

      expect(response_body).to eq({}.to_json)
      expect(Product).to_not be_exists(product.id)
    end
  end
end
      
 
