RspecApiDocumentation.configure do |config|
  config.app = Rails.application
  config.format = :json
  config.docs_dir = Rails.root.join("doc", "api")
  config.api_name = "Sims API"
end
