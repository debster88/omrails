Rails.application.routes.draw do
  get 'users/:username', to: 'users#show', as: 'user'
  get 'feed', to: 'feed#show'
  
  resources :users, only: :show, param: :username do
    member do
      post 'follow', to: 'follows#create'
      delete 'unfollow', to: 'follows#destroy'
    end
  end
  
  resources :items
  resources :tweets
  resources :tweets
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contactus' => 'pages#contactus'
end
