Rails.application.routes.draw do
  resources :lyrics, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :show, :update, :destroy]
end
