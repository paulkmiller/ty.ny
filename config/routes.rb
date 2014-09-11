Rails.application.routes.draw do
  devise_for :users
  resources :urls
  root 'urls#index'
  post "/create", to: "devise/sessions#create"
end

