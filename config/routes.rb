Rails.application.routes.draw do
  get 'memories/index'
  get 'memories/new'
  get 'memories/create'
  devise_for :users
  root to: 'memories#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
