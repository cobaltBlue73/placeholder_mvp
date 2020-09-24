Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  get 'friends', to: 'users#friends'
  get 'camera', to: 'memories#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
