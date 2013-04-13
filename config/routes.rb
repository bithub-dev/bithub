Bithub::Application.routes.draw do
  root :to => 'home#home'

  resources :tips
  resources :resources
  resources :students, only: ['index']
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  get "secret" => "home#secret", :as => "secret"
  root :to => "home#index"
  get "sessions/create" => "home#index"
  resources :users, except: ['index']
  resource :session, only: ['create', 'destroy']
end
