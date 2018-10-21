Rails.application.routes.draw do
  # Import constraints
  require 'constraints/auth_constraint'

  # Root of app - homepage
  root 'home#index'
  get 'home', to: 'home#index'

  # Url for check if API is running
  get '/healthz' => 'healthz#index'

  # API endpoints
  scope '/api', constraints: AuthConstraint.new(token: 'OllBS57MeAW041dgR7xolpZaiO87kjnMVVK3qrtgtTbcBolB7K3TugZBuM6wy8SjyXh1cP') do
    # Version 1 of API
    scope module: :v1, defaults: { format: :json } do
      scope '/v1' do
        # Endpoint for GraphQL endpoints
        # post '/graphql' => 'graphql#execute'
      end
    end
  end
end
