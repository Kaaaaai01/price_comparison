Rails.application.routes.draw do 
  devise_for :users
  resources :prices, only: [:new, :index, :show]
  resources :items
  resources :users, only: [:new, :show, :edit]
  root to: 'homes#top'
  get 'home/about', to: 'homes#about', as: 'about'
  post 'items' => 'items#create' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
