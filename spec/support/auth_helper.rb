def auth_headers_for(user)
  user.create_new_auth_token.each do |key, value|
    header key, value
  end
end

