Rails.application.routes.draw do
  resources :lyrics, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :show, :create, :update, :destroy]

  post '/login', to: 'auth#create'
  get '/prof', to: 'users#profile'
end
