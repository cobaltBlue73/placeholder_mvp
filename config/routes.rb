Rails.application.routes.draw do
  devise_for :users

  root to: 'memories#index'
  get 'friends', to: 'users#friends'
  get 'camera', to: 'memories#new'
  post 'memories/create'
  get 'notifications', to: 'pages#notifications'

  resources :memories, only: [:show, :create]

  resources :memories, only: [] do
    resources :comments, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
