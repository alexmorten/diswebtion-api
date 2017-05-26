Rails.application.routes.draw do
  resources :arguments
  resources :conditions
  resources :sides
  resources :topics
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
