Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    get "/ability", to: "ability#index"
  end
end
