Rails.application.routes.draw do
  namespace :admin do
    resources :movies, only: [:index, :new, :create, :edit, :update, :destroy]
  end

  resources :movies, only: [:index, :show]
  get '/sheets', to: 'sheets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
