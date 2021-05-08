Rails.application.routes.draw do
  resources :categories
  devise_for :users
  devise_for :admins
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
