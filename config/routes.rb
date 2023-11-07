Rails.application.routes.draw do
  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users

  root to: 'events#index'

  resources :attendances
  resources :events
  
end
