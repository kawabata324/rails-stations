Rails.application.routes.draw do
  # namespace :admin do
  #   get '/movies', to: 'movies#index'
  #   get '/movies/new', to: 'movies#new'
  #   post '/movies', to: 'movies#create'
  # end
  get '/movies', to: 'movies#index'
  get '/admin/movies', to: 'movies#index'
  # get '/admin/movies/new', to: 'admin::movies#new'
  # post '/admin/movies', to: 'admin::movies#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
