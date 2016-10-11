Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "/", to: "places#logo_screen"

  get "/home", to: "places#index"

  get "/result", to: "places#result"

  get "/api/places/lodging", to:"places#lodging"

  get "/api/places/recreation", to:"places#recreation"

  get "/api/places/supplies", to:"places#supplies"

  get "/api/places/services", to:"places#services"

  get "/api/places/medical", to:"places#medical"

  # If you were to do this is super strict Rails way:
  # get "/api/category/:id/places", to: "category_places#index"

end
