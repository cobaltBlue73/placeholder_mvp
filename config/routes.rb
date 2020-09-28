Rails.application.routes.draw do
  devise_for :users
  root to: 'memories#index'
  get 'friends', to: 'users#friends'
  get 'camera', to: 'memories#new'
  post 'memories/create'
<<<<<<< HEAD
  get 'notifications', to: 'users#notifications'

  resources :memories, only: [:show]
=======
  resources :memories, only: [:show, :create]
>>>>>>> master

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
