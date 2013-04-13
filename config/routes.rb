Bithub::Application.routes.draw do
  root :to => 'home#home'

  resources :tips
  resources :resources
  resources :students, only: ['index']

end
