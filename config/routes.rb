Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/movies", to: "movies#index", as: "movies"
  get "/movie/new", to: "movies#new", as: "new_movie"
  get "/movie/:id", to: "movies#show", as: "movie"
  get "/movie/:id/edit", to: "movies#edit", as: "edit"

  post "/movies", to: "movies#create"

  put "/movie/:id", to: "movies#update"
  patch "/movie/:id", to: "movies#update"

  delete "/movie/:id", to: "movies#destroy"
end
