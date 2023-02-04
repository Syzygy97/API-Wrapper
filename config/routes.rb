Rails.application.routes.draw do
  get 'type/index'
  get 'type/show'
  get 'berry/index'
  get 'berry/show'
  get 'pokemon_species/index'
  get 'pokemon_species/show'
  get 'move/index'
  get 'move/show'
  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    get "/ability", to: "ability#index"
    get "/ability/:name", to: "ability#show"
    
    get "/pokemon", to: "pokemon#index"
    get "/pokemon/:name", to: "pokemon#show"

    get "/item", to: "item#index"
    get "/item/:name", to: "item#show"

    get "/location", to: "location#index"
    get "/location/:name", to: "location#show"

    get "/region", to: "region#index"
    get "/region/:name", to: "region#show"

    get "/move", to: "move#index"
    get "/move/:name", to: "move#show"
    
    get "/pokemon-species", to: "pokemon_species#index"
    get "/pokemon-species/:name", to: "pokemon_species#show"

    get "/berry", to: "berry#index"
    get "/berry/:name", to: "berry#show"

    get "/type", to: "type#index"
    get "/type/:name", to: "type#show"
  end
end
