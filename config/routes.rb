Rails.application.routes.draw do
  resources :ar_photos
  devise_for :users
  root to: 'ar_photos#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
