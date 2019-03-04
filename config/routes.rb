Rails.application.routes.draw do
  root to: "toppages#index"
  get "signup", to:"users#new"
  delete "signdown", to:"users#destroy"
  get "login", to:"sessions#new"
  post "login", to:"sessions#create"
  delete "logout", to:"sessions#destroy"
  resources :users do
   member do
    get :followings
    get :followers
    get :likes
   end
  end
  resources :microposts, only: [:create,:edit,:update, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy]
end
