# frozen_string_literal: true

require 'sidekiq/web'
Rails.application.routes.draw do
  get 'crossroads/show'
  get 'static_pages/home'
  mount Sidekiq::Web => '/sidekiq'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  root to: 'pages#home'

  resources :cities

  resources :junctions

  resources :users, only: [:index, :new, :create]

  get '/crossroads', to: "crossroads#show"
  post "sign_up", to: "users#create"
  get "sign_up", to: "users#new"

  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "login", to: "sessions#new"

  resources :confirmations, only: [:create, :edit, :new], param: :confirmation_token

  resources :passwords, only: [:create, :edit, :new, :update], param: :password_reset_token
end
