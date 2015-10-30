require 'rspec_api_documentation/dsl'

resource "Warehouses" do
  get "/api/v1/warehouses" do
    example "Get list of warehouses" do
      main_warehouse = FactoryGirl.create(:main_warehouse)
      second_facility = FactoryGirl.create(:second_facility)

      auth_headers_for(FactoryGirl.create(:user))

      do_request

      expect(status).to eq(200)

      response_attrs = JSON.parse(response_body)

      expect(response_attrs['warehouses'][0]['id']).to eq(main_warehouse.id)
      expect(response_attrs['warehouses'][0]['name']).to eq(main_warehouse.name)
      expect(response_attrs['warehouses'][1]['id']).to eq(second_facility.id)
      expect(response_attrs['warehouses'][1]['name']).to eq(second_facility.name)
    end
  end
end
 
