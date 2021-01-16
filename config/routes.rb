Rails.application.routes.draw do
  
  get '/signup' => 'users#new'
  get '/login' => 'users#login'
    
  resources :statuses
  resources :supports
  resources :comments
  resources :assignments
  resources :jobs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
