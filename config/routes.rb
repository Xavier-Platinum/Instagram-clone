Rails.application.routes.draw do
  devise_for :accounts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/dashboard" => "accounts#index"

  # post routes
  resources :posts, only: [:new, :create, :show]
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "public#homepage"
end
