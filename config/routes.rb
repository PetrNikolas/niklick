Rails.application.routes.draw do

  devise_for :users
  resources :posts

  get 'home/index'

  root :to => "home#index"

end
