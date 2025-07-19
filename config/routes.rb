Rails.application.routes.draw do 
  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do
    get 'dashboards', to: 'dashboards#index'
    resources :users, only: [:destroy]
  end

  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end

  devise_for :users
  resources :prices, only: [:new, :index, :show]
  resources :items
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  root to: 'homes#top'
  get 'home/about', to: 'homes#about', as: 'about'
  post 'items' => 'items#create' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
