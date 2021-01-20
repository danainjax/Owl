Rails.application.routes.draw do
  resources :tasks
  root "sessions#home"
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/auth/facebook/callback' => 'sessions#facebook'
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  
  resources :tasks do
    resources :comments, only: [:new, :create, :index, :show]
  end
  resources :statuses
  resources :supports
  resources :comments
  resources :assignments 

  resources :users do 
    resources :tasks, only: [:new, :create, :index, :update, :show]
    resources :assignments, only: [:new, :create, :index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
