Rails.application.routes.draw do
  root to: "toppages#index"
  get "signup", to:"users#new"
  get "login", to:"sessions#new"
  post "login", to:"sessions#create"
  delete "logout", to:"sessions#destroy"
  resources :users do
   member do
    get :followings
    get :followers
   end
  end
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end
