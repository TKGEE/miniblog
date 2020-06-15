Rails.application.routes.draw do
  devise_for :users
  root 'reports#index'
  resources :reports do
    resources :comments,only: [:show,:create]
  end
  resources :users,only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
