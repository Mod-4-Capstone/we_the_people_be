# typed: false
Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :test, only: [:show]
      post '/zipcode_with_quiz', to: "congress#zipcode_with_quiz"
      post '/state_with_quiz', to: 'congress#state_with_quiz'
    end
    namespace :v2 do 
      post '/zipcode_with_quiz', to: "congress#zipcode_with_quiz"
      post '/state_with_quiz', to: 'congress#state_with_quiz'
    end
  end
end