Rails.application.routes.draw do
  # Devise for token authentication
  mount_devise_token_auth_for 'User', at: 'auth'

  # Root of application
  root :to => "home#index"
  get '/home' => 'home#index'

  # GraphiQL online playground
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"

  # API endpoints
  scope '/api' do
    # Version 1 of API
    scope module: :v1, constraints: ApiConstraint.new(version: 1) do
      scope '/v1' do
        get "/graphql" => "graphql#execute_non_authorized"
        post "/graphql" => "graphql#execute_authorized"

        # Posts resources
        resources :posts, only: [:index, :create, :show, :update, :destroy]
      end
    end
  end
end
