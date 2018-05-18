Rails.application.routes.draw do
  resources :tweets
  resources :tweets
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contactus' => 'pages#contactus'
end
