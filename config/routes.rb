Rails.application.routes.draw do
  resources :lyrics, only: [:index]
  resources :users, only: [:index]
end
