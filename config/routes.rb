Bithub::Application.routes.draw do
  root :to => 'home#home'

  resources :tips
  resources :resources
  resources :students, only: ['index']
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  resources :users
  resources :sessions
  get "secret" => "home#secret", :as => "secret"
  root :to => "home#index"
  get "sessions/create" => "home#index"
end
