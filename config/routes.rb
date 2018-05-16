Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contactus' => 'pages#contactus'
end
