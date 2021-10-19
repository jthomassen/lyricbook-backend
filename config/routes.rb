Rails.application.routes.draw do
  resources :lyrics, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :create]

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # get '/logged_in', to: 'application#logged_in?'
end
