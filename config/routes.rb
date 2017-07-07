Rails.application.routes.draw do
  
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  post '/search_users', to: 'users#search_users'

  root 'users#index'

  resources :users
  resources :posts
  resources :comments
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
