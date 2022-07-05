Rails.application.routes.draw do
  get '/admin/movies', to: 'admin/movies#index'
  get '/admin/movies/new', to: 'admin/movies#new'
  post '/admin/movies', to: 'admin/movies#create'
  get '/movies', to: 'movies#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
