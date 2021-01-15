Rails.application.routes.draw do
  resources :statuses
  resources :supports
  resources :comments
  resources :assignments
  resources :jobs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
