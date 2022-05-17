Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :test, only: [:show]
      post '/zip_code', to: 'congress#zip_code'
      get '/state', to: 'congress#state'
      post '/zip_code_with_quiz', to: "congress#zip_code_with_quiz"
    end
  end
end
