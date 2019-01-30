Rails.application.routes.draw do
  # Import constraints
  require 'constraints/auth_constraint'
  require 'constraints/version_constraint'

  # Devise routes
  devise_for :users, defaults: { format: :json }

  scope '/', module: :web do
    root 'home#index'
    get '/health', to: 'healtz#index'
  end

  # GraphiQL playground in browser - for just only development env
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/api/v1/graphql' if Rails.env.development?

  # API endpoints
  scope '/api', module: :api, defaults: { format: :json }, constraints: AuthConstraint.new(token: 'OllBS57MeAW041dgR7xolpZaiO87kjnMVVK3qrtgtTbcBolB7K3TugZBuM6') do
    # Version 1 of API
    # scope '/v1', module: :v1, constraints: VersionConstraint.new(version: 1) do
    scope '/v1', module: :v1 do
      # Endpoint for GraphQL endpoints
      post '/graphql' => 'graphql#execute'

      # REST endpoints for news
      resources :news
    end
  end
end
