Rails.application.routes.draw do
  devise_for :users
  resources :urls
  root 'urls#index'


  # get "/auth/:provider/callback", to: "sessions#create"
  post "/create", to: "devise/sessions#create"
end

