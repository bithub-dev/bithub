Bithub::Application.routes.draw do
  root :to => 'home#home'

  resources :tips
  resources :resources, only: ['index', 'create', 'edit', 'update']
  resources :students, only: ['index']
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  get "secret" => "home#secret", :as => "secret"
  root :to => "home#index"
  resources :users, except: ['index']
  resource :sessions, only: ['create', 'destroy']

  # JB: I'm a little confused about this route, this is verbatim
  # from Railscast #382.  What is :tag here and how is it associated
  # to the tag.name?
  get 'tags/:tag', to: 'tags#show', as: :tags
end
