Rails.application.routes.draw do
  # Devise for authentication
  devise_for :users

  # Root of application
  root :to => "home#index"
  get '/home' => 'home#index'

  # API endpoints
  scope '/api' do
    # Version 1
    scope module: :v1, constraints: ApiConstraint.new(version: 1) do
      scope '/v1' do
        # News resources
        resources :news, only: :index
        # Posts resources
        resources :posts
      end
    end
  end

end
