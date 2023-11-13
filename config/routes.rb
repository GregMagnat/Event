Rails.application.routes.draw do
  get 'static_pages/index'
  get 'static_pages/secret'

  devise_for :users

  devise_scope :user do
   get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  root to: 'events#index'

  resources :users
  resources :attendances
  resources :events
  
end
