Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/v1/auth'
  
  namespace :api do
    namespace :v1 do
      resources :products, except: [:new, :edit]
      resources :warehouses, only: [:index]
    end
  end
end
