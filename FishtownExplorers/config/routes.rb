Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  post "/locate", to: "geo#locate"

# places routing

  get "/explore", to: "places#explore"
  get "/libations", to: "places#libations"
  get "/pizza", to: "places#pizza"
  get "/coffee", to: "places#coffee"
  get "/parks", to: "places#parks"
  get "/shops", to: "places#shops"
  get "/wellness", to: "places#wellness"
  get "/music", to: "places#music"
  get "/restuarants", to: "places#restaurants"
  get "/art", to: "places#art"
  get "/lodging", to: "places#lodging"
  get "/allTheThings", to: "places#misc"
  get "/transportation", to: "places#transit"

# itineraries routing

  get "/itinerary_new", to: "itineraries#new"
  get "/itinerary_portal", to: "itineraries#index"
  get "/itinerary", to: "itineraries#show"
  get "/add_place/:id", to: "itineraries#add_place"
  get "/delete_itinerary", to: "itineraries#destroy"

end
