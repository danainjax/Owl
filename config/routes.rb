Rails.application.routes.draw do
  resources :tasks
  root "sessions#home"
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  
  resources :tasks do
    resources :comments, only: [:new, :create, :index]
  end
  resources :statuses
  resources :supports
  resources :comments
  resources :assignments
  resources :users do 
    resources :tasks, only: [:new, :create, :index, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
