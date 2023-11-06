Rails.application.routes.draw do

  root to: 'events#index'

  resources :attendances
  resources :events
  resources :users
  
end
