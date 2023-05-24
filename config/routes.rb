Rails.application.routes.draw do
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "restaurants#index", as: "restaurants"
  # post "restaurants", to: "restaurants#create"
  # get "restaurants/new", to: "restaurants#new", as: "new_restaurant"
  # get "restaurants/:id", to: "restaurants#show", as: "restaurant"
  resources :restaurants

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
