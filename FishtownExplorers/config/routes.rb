Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get "/itinerary", to: "itineraries#show"

  post "/locate", to: "geo#locate"

  get "/categories", to: "places#categories"
  get "/libations", to: "places#libations"
  get "/pizza", to: "places#pizza"
  get "/coffee", to: "places#coffee"
  get "/parks", to: "places#parks"
  get "/shops", to: "places#shops"
  get "/fitness", to: "places#fitness"
  get "/music", to: "places#music"
  get "/restuarants", to: "places#restaurants"
  get "/art", to: "places#art"
  get "lodging", to: "places#lodging"
  get "/allTheThings", to: "places#misc"
  get "/transportation", to: "places#transit"
end
