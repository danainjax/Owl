Rails.application.routes.draw do
  root "sessions#home"
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/auth/facebook/callback' => 'sessions#facebook'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  # resource :sessions, only: [:new, :create, :destroy]
  
  resources :tasks do
    resources :comments, only: [:new, :create, :index, :show]
  end
  
  resources :comments
  resources :assignments 

  resources :users do 
    resources :tasks, only: [:new, :create, :index, :update, :show]
    resources :assignments, only: [:new, :create, :index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
