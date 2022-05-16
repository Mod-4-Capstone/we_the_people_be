Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :test, only: [:show]
      get '/zip_code', to: 'congress_controller#zip_code'
      get '/state', to: 'congress_controller#state'
    end
  end
end
