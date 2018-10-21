Rails.application.routes.draw do
  # Import constraints
  require 'constraints/auth_constraint'

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  end

  post '/graphql' => 'graphql#execute'

  # Root of app - homepage
  root 'home#index'
  get 'home', to: 'home#index'

  # Url for check if API is running
  get '/healthz' => 'healthz#index'

  # API endpoints
  scope '/api' do
    # Version 1 of API
    scope module: :v1, defaults: { format: :json } do
      scope '/v1' do
        # Endpoint for GraphQL endpoints
        #post '/graphql' => 'graphql#execute'
      end
    end
  end
end
