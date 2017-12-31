require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsStarterKit
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Skip assets, templates and helpers from being generated with your controllers.
    config.generators do |g|
      g.assets false
      g.helper false
      g.template_engine false
    end

    # CORS configuration
    config.middleware.insert_before 0, 'Rack::Cors' do 
      allow do 
        # For production, you need to replace the asterisk with the URL of your client-side application
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :options] 
      end 
    end

    # All times in UTC, defaults to the Eastern timezone when displaying the values, and applies optimistic locking
    config.active_record.default_timezone = :utc  
    config.time_zone = 'Eastern Time (US & Canada)'  
    config.active_record.lock_optimistically = true 

    config.middleware.use Rack::Attack
  end
end
