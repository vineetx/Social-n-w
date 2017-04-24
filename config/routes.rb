require 'admin_constraint'

Rails.application.routes.draw do
  constraints(AdminConstraint.new) do
    root 'admin/dashboard#index'
  ActiveAdmin.routes(self)
end

  resources :posts
 
  root 'home#index'
  devise_for :users, :controllers => {:registrations => "registrations"}
  get 'profile', to: 'home#profile'
  get 'like', to: 'posts#like'
  post 'unfollow', to: 'follows#destroy'
  post 'follow', to: 'follows#create'
  post 'home/search', to: 'home#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
