require 'rspec_api_documentation/dsl'

resource 'Authorization' do
  let(:email) { Faker::Internet.email }

  post '/api/v1/auth' do
    parameter :email, 'user email', required: true
    parameter :password, 'user password', required: true

    example 'User sign up with email and password' do
      do_request(email: email, password: Faker::Internet.password)

      expect(status).to eq(200)

      response_attrs = JSON.parse(response_body)

      expect(response_attrs['status']).to eq('success')
      expect(response_attrs['data']['email']).to eq(email)
    end
  end

  post '/api/v1/auth/sign_in' do
    parameter :email, 'user email', required: true
    parameter :password, 'user password', required: true

    let(:password) { Faker::Internet.password }
    let!(:user) { User.create(email: email, password: password) }

    example 'User sign in with email and password' do
      explanation 'this api call returns access token in the header parameter Access-Token'

      do_request(email: email, password: password)

      expect(status).to eq(200)

      expect(response_headers['Access-Token']).to be_present
      expect(response_headers['Client']).to be_present
      expect(response_headers['Expiry']).to be_present
    end
  end
end
