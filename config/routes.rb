Rails.application.routes.draw do
  resources :games
  resources :users

  post '/login', to: "sessions#process_login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
