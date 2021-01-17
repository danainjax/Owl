Rails.application.routes.draw do
  resources :tasks
  root "sessions#home"
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  #login route
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  
  resources :tasks
  resources :statuses
  resources :supports
  resources :comments
  resources :assignments
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
