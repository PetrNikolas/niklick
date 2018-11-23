Rails.application.routes.draw do
  # Import constraints
  require 'constraints/auth_constraint'

  # Root of app - homepage - based on the AMP project
  root 'landing_page#index'

  # Homepage - based on the React app
  get 'home', to: 'home#index'

  # Url for check if API is running
  get '/healthz' => 'healthz#index'

  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/api/v1/graphql' if Rails.env.development?

  # API endpoints
  scope '/api', constraints: AuthConstraint.new(token: 'OllBS57MeAW041dgR7xolpZaiO87kjnMVVK3qrtgtTbcBolB7K3TugZBuM6') do
    # Version 1 of API
    scope module: :v1, defaults: { format: :json } do
      scope '/v1' do
        # Endpoint for GraphQL endpoints
        post '/graphql' => 'graphql#execute'

        # REST endpoints for news
        resources :news
      end
    end
  end
end
