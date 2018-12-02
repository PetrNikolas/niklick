Rails.application.routes.draw do
  # Import constraints
  require 'constraints/auth_constraint'

  # Root of app - homepage - based on the AMP project
  root 'home#index'

  # Url for check if API is running
  get '/health', to: 'healtz#index'

  # Pages - static pages like privacy, terms, etc
  get 'privacy', to: 'pages#privacy'
  get 'terms', to: 'pages#terms'

  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/api/v1/graphql' if Rails.env.development?

  # API endpoints
  scope '/api', module: :api, constraints: AuthConstraint.new(token: 'OllBS57MeAW041dgR7xolpZaiO87kjnMVVK3qrtgtTbcBolB7K3TugZBuM6') do
    # Version 1 of API
    scope '/v1', module: :v1, defaults: { format: :json } do
      # Endpoint for GraphQL endpoints
      post '/graphql' => 'graphql#execute'

      # REST endpoints for news
      resources :news
    end
  end
end
