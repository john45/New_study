# frozen_string_literal: true

Softgroup::Application.routes.draw do
  root to: 'home#index'

  get 'log_in' => "sessions#new", as: 'log_in'
  get 'log_out' => "sessions#destroy", as: 'log_out'

  # get "sessions/destroy"

  get "sign_up" => 'users#new', as: 'sign_up'


  resources :users
  resources :sessions, only: %w( new create delete)
  resources :books do
    post 'search', on: :collection
  end
  # resources :book, except: [:index]

end
