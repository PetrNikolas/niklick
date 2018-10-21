source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.6'

# Ruby interface to the PostgreSQL RDBMS.
gem 'pg'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# GraphQL integrations
gem 'graphql', '1.7.12'
# gem 'graphql-preload'

# Manage Procfile-based applications
gem 'foreman'

# Use Puma as the app server
gem 'puma', '~> 3.0'

# Rack Middleware for handling Cross-Origin Resource Sharing (CORS), which makes cross-origin AJAX possible
gem 'rack-cors'

# Rack middleware for blocking & throttling
gem 'rack-attack'

# A Ruby static code analyzer
gem 'rubocop', '~> 0.52.1', require: false

# Rails logs analyzer (see how fast your views are rendering)
# gem 'log_analyzer'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# React implementation for Rails apps
gem 'react_on_rails', '8.0.3'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution
  # and get a debugger console
  gem 'byebug', platform: :mri

  # Testing framework
  # gem 'rspec-rails', '~> 3.5'

  # Patch-level verification for Bundler
  # gem 'bundler-audit', require: false
end

group :development do
  # Access an IRB console on exception pages
  # or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'

  gem 'listen', '~> 3.0.5'

  # Spring speeds up development by keeping your application running
  # in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'spring-watcher-listen', '~> 2.0.0'

  # gem 'better_errors'

  # Rails >= 3 pry initializer
  # gem 'pry-rails'

  gem 'graphiql-rails', '1.4.8'

  # Make your Rubies go faster with this command line tool highly inspired by fast-ruby and Sferik's talk at Baruco Conf
  # gem 'fasterer'

  # Code smell detector for Ruby
  # gem 'reek'

  # A code metric tool for rails projects
  # gem 'rails_best_practices'

  # A static analysis security vulnerability scanner for Ruby on Rails applications
  # gem 'brakeman', require: false

  # gem 'fukuzatsu'
end

group :test do
  # Provides RSpec with additional matchers.
  # gem 'shoulda-matchers', '~> 3.1'

  # A library for generating fake data. We'll use this to generate test data.
  # gem 'faker'

  # You guessed it! It literally cleans our test database to ensure a clean state in each test suite.
  # gem 'database_cleaner'

  # Brings back `assigns` and `assert_template` to your Rails tests
  # gem 'rails-controller-testing'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'mini_racer', platforms: :ruby
gem 'webpacker_lite'