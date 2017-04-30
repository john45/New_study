# frozen_string_literal: true

Softgroup::Application.routes.draw do
  get 'feeds' => 'feeds#index', as: 'feeds'
  get 'next_page' => 'feeds#next_page'

  root to: 'home#index'

  get 'log_in' => 'sessions#new', as: 'log_in'
  get 'log_out' => 'sessions#destroy', as: 'log_out'

  # get "sessions/destroy"

  get 'sign_up' => 'users#new', as: 'sign_up'

  resources :users
  resources :posts
  resources :sessions, only: %w(new create delete)
end
