Rails.application.routes.draw do
  resources :messages, only: [:index]
  resources :channels, only: [:index]
  resources :settings, only: [:index]
  resources :sessions, only: [:new, :create]
  resources :users, only: [:new, :create] 
  resources :profiles, only: [:show, :edit, :update]
  root to: "main#index"
end