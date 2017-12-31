# Niklick
Versioned API solution template for hipsters!

* Version 2.3.7

## Prerequisites and Main Libraries
* [Ruby 2.3.1 and +](https://www.ruby-lang.org/en/downloads/),
* [Rails 5 and +](http://guides.rubyonrails.org/getting_started.html),
* [RVM](https://rvm.io/).

### Databases
* [PostgreSQL](https://www.postgresql.org/docs/),
* [SQLite](https://sqlite.org/).

## Ruby Gems
* [Foreman](https://github.com/ddollar/foreman) - Manage Procfile-based applications,
* [devise_token_auth](https://github.com/lynndylanhurley/devise_token_auth) - Token based authentication for Rails JSON APIs. Designed to work with jToker and ng-token-auth.,
* [Fasterpath](https://github.com/danielpclark/faster_path) - Faster Pathname handling for Ruby written in Rust,
* [Better errors](https://github.com/charliesome/better_errors) - Better error page for Rack apps,
* [RSpec](https://github.com/rspec/rspec-rails) - RSpec for Rails-3+,
* [Factory Girl Rails](https://github.com/thoughtbot/factory_girl_rails) - Factory Girl ♥ Rails,
* [Shoulda](http://matchers.shoulda.io/) - Collection of testing matchers extracted from Shoulda,
* [Database cleaner](http://databasecleaner.github.io/) - Strategies for cleaning databases in Ruby. Can be used to ensure a clean state for testing,
* [Faker](https://github.com/stympy/faker) - A library for generating fake data such as names, addresses, and phone numbers,
* [Rack attack](https://github.com/kickstarter/rack-attack) - Rack middleware for blocking & throttling,
* [Cancancan](https://github.com/CanCanCommunity/cancancan) - The authorization Gem for Ruby on Rails (you must uncommented in gemfile),
* [Paperclip](https://github.com/thoughtbot/paperclip) - Easy file attachment management for ActiveRecord (you must uncommented in gemfile),
* [Rubocop](https://github.com/bbatsov/rubocop) - A Ruby static code analyzer (you must uncommented in gemfile),
* [Capistrano](https://github.com/capistrano/rails) - Official Ruby on Rails specific tasks for Capistrano (you must uncommented in gemfile),  
* [Bcrypt](https://github.com/codahale/bcrypt-ruby) - bcrypt-ruby is a Ruby binding for the OpenBSD bcrypt() password hashing algorithm, allowing you to easily store a secure hash of your users' passwords (you must uncommented in gemfile),
* [Redis](https://github.com/redis/redis-rb) - A Ruby client library for Redis (you must uncommented in gemfile).

## Project Setup

* For production, you need to replace the asterisk with the URL of your client-side application in ./config/application.rb file.

1. Clone or download this repo,
2. Run `bundle install`,
3. Run `rake db:migrate`,
4. Run `rake db:seed`,
5. Run `foreman start`, 
6. Visit --> http://localhost:5000/. That's it!.

### Test API without front-end app
```shell
# You can get all Posts
curl -H "accept: application/json; version=1" http://localhost:5000/api/v1/posts

# You can create Post
curl -X POST 
  --url 'http://localhost:5000/api/v1/posts?title=First%20post&subtitle=My%20first%20postdescription=My%20small%20and%20test%20first%20post.&content=This%20is%20a%20content%20of%20my%20first%20post' \ 
  --header 'accept: application/json; version=1' \
  --header 'cache-control: no-cache' 

# You can update Post  
curl --request PUT \
  --url 'http://localhost:5000/api/v1/posts/1?title=Updated%20First%20title' \
  --header 'accept: application/json; version=1' \
  --header 'cache-control: no-cache' \

# You can get specific Post 
curl -H "accept: application/json; version=1" http://localhost:5000/api/v1/posts/1

# You can delete Post 
curl -H "accept: application/json; version=1" -X "DELETE" http://localhost:5000/api/v1/posts/1
```

## Directory Structure

```shell
.
├── app                         # Rails application - controllers, models, etc.
├── /bin                        # Folder for Rake, bundle, spring setup, etc.
├── /config                     # Rails app configuration - database, app, environment, etc.
├── /db                         # Database setup - migrate, seeds, schema
├── /lib                        # Lib folder
├── /log/                       # Log folder
├── /spec/                      # Tests for the Rails app
├── /test/                      # Unit and integration tests for the Rails app
├── /tmp/                       # TMP folder - sockets, cache, etc.
├── /vendor/                    # Vendor assets
│── .gitigonre                  # Gitignore file
│── .rspec                      # Tests file
│── config.ru                   # Config file for Rails app
│── Gemfile                     # File for all Ruby gems
│── Gemfile.lock                # File with Gemfile lock
│── license                     # License file
│── Rakefile                    # File for rake tasks
```

## Backend Side Development
1. Run `foreman start`.
2. And visit http://localhost:5000/.