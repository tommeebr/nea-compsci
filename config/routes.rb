Rails.application.routes.draw do
  resources :messages, only: [:index]


  resources :channels, only: [:index]
  get '/channels/home', to: 'channels#home', as: :channel_home


  resources :settings, only: [:index]


  resources :login, controller: 'sessions', as: :sessions, only: [:new, :create]


  resources :createaccount, controller: 'users', as: :users, only: [:new, :create] 


  resources :profiles, only: [:show, :edit, :update]


  resources :home, only: [:index]

  
  root to: "home#index"
end