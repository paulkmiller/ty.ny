# Rails.application.routes.draw do
#   get 'urls/new'
#   get 'urls/create'

Rails.application.routes.draw do
  devise_for :users
  resources :urls, only: [:new, :create]
  root to: 'urls#new'
end
