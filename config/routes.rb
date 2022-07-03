Rails.application.routes.draw do
  namespace :admin do
    get '/movies', to: 'movies#index'
    get '/movies/new', to: 'movies#new'
    post '/movies', to: 'movies#create'
  end
  get '/movies', to: 'movies#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
