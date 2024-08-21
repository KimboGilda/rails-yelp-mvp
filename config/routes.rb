Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # A visitor can see the list of all restaurants.
  get "restaurants", to: "restaurants#index"

  # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  # have a new page with an input form, where the user defines all the restaurant's info
  get "restaurants/new", to: "restaurants#new"

  # post redirects after creating the new restaurant to the page of the restaurant
  post "restaurants", to: "restaurants#create"

end
