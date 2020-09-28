Rails.application.routes.draw do
  devise_for :users
  root to: 'memories#index'
  get 'friends', to: 'users#friends'
  get 'camera', to: 'memories#new'
  # get 'memories', to: 'memories#index
  post 'memories/create'
  resources :memories, only: [:show, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
