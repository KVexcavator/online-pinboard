Rails.application.routes.draw do
  get :search, :to => 'home#search', :as => 'search'
  devise_for :users
  root to: "boards#index"
  resources :pins
  resources :boards
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
