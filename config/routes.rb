Rails.application.routes.draw do

  resources :beers, param: :beer_type
  
  root "beers#index"

  get "beers/:identifier", to: "beers#show"
  patch "beers/:identifier", to: "beers#update"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
