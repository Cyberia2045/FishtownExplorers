Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get "/itinerary", to: "itineraries#show"

  get "/categories", to: "home#categories"

  post "/locate", to: "geo#locate"
end
