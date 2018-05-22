Rails.application.routes.draw do
  devise_for :users
  
  #custom routes
  get 'users/:username', to: 'users#show', as: 'user'
  get 'about' => 'pages#about'
  get 'contactus' => 'pages#contactus'
  get 'feed', to: 'feed#show'
  
  resources :users, only: :show, param: :username do
    member do
      post 'follow', to: 'follows#create'
      delete 'unfollow', to: 'follows#destroy'
    end
  end
  
  resources :items do
    member do
      post 'vote', to:'votes#create'
      delete 'unvote', to: 'votes#destroy'
    end
  end
  
  resources :tweets
  root 'pages#home'
  
  ActiveAdmin.routes(self)
  
end
