Rails.application.routes.draw do
  # Devise for authentication
  devise_for :users

  # Resources
  resources :posts

  # Root of application
  root :to => "home#index"
  get '/home' => 'home#index'

  # API endpoints
  scope '/api' do
    # Version 1
    scope '/v1' do
      scope 'news' do 
        get '/' => 'news#index', defaults: { format: :json }
      end
    end
  end

end
