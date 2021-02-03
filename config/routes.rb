Rails.application.routes.draw do
  get 'authors/index'
  get 'books/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get '/products', to: 'products#index'
get '/products/:id', to:'products#show'

resources :books
resources :authors
resources :accounts, only: [:new, :create]
resources :sessions, only: [:new, :create, :destroy]
end
