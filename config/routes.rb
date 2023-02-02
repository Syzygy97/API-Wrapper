Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    get "/ability", to: "ability#index"
    get "/ability/:name", to: "ability#show"
    get "/pokemon", to: "pokemon#index"
    get "/pokemon/:name", to: "pokemon#show"
  end
end
