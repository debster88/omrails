Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contactus' => 'pages#contactus'
end
