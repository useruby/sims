class ApplicationController < ActionController::API
  respond_to :json
  
  include DeviseTokenAuth::Concerns::SetUserByToken
  include CanCan::ControllerAdditions

  # make jbuilder.cache work with rails-api
  # look at issue https://github.com/rails-api/rails-api/issues/25
  include ActionController::MimeResponds
  include ActionController::Caching

  self.page_cache_directory = Rails.public_path
  self.perform_caching = true
  self.cache_store = ActionController::Base.cache_store

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: {"error": exception.message}, status: 404
  end

  rescue_from CanCan::AccessDenied do |exception|
    render json: {"error": exception.message}, status: 401
  end
end
