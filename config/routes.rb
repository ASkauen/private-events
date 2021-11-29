# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :attendances
  resources :users, only: [:show]
  resources :invites, only: [:index, :new, :destroy]
  post 'invite/accept', to: 'invites#accept', as: 'accept_invite'
  post 'invite/decline', to: 'invites#decline', as: 'decline_invite'
  delete 'event/kick_attendee', to: 'attendances#kick', as: 'kick_attendee'

  root 'events#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
