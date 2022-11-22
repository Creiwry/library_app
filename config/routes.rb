Rails.application.routes.draw do
  resources :cities
  resources :users
  resources :libraries
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
