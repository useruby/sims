RspecApiDocumentation.configure do |config|
  config.app = Rails.application
  config.format = :markdown
  config.docs_dir = Rails.root.join('doc', 'api', 'v1')
  config.api_name = 'Sims API'
  config.curl_host = 'localhost:3000'
  config.curl_headers_to_filter = %w(Host Cookie)
  config.post_body_formatter = :json
end
