Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/movies", to: "movies#index", as: "movies"
  get "/movies/new", to: "movies#new"
  get "/movies/:id", to: "movies#show"

  post "/movies", to: "movies#create"

  put "/movies/:id", to: "movies#update"
  patch "/movies/:id", to: "movies#update"

  delete "/movies/:id", to: "movies#destroy"
end
