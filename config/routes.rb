Rails.application.routes.draw do
  # Root of app - homepage
  root 'home#index'
  get 'home', to: 'home#index'

  # Url for check if API is running
  get '/healthz' => 'healthz#index'
end
