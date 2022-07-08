Rails.application.routes.draw do
  namespace :admin do
    resources :movies, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :schedules, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  end

  resources :movies, only: [:index, :show], shallow: true  do
    resources :reservation
  end
  get '/sheets', to: 'sheets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
