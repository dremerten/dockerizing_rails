# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :tags, except: [:new, :destroy]

  resources :documents

  resources :users

  root to: 'documents#index'
end
