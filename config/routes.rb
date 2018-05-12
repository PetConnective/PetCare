Rails.application.routes.draw do
  resources :adoption_processes
  resources :comments
  resources :publications
  resources :pets
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
