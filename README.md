# Niklick
React on Rails and Versioned API solution template for hipsters!

* Version 3.0.2

## Prerequisites
* [Ruby 2.3.1 and +](https://www.ruby-lang.org/en/downloads/)
* [Rails 5 and +](http://guides.rubyonrails.org/getting_started.html)
* [RVM](https://rvm.io/)
* [PostgreSQL](https://www.postgresql.org/docs/)

## Main Ruby Gems
* [ReactOnRails](https://github.com/shakacode/react_on_rails) - Integration of React + Webpack + Rails using rails/webpacker to build Universal (Isomorphic) Apps (aka Server Rendering)
* [Pg](https://bitbucket.org/ged/ruby-pg/wiki/Home) - Ruby interface to the PostgreSQL RDBMS
* [Foreman](https://github.com/ddollar/foreman) - Manage Procfile-based applications
* [GraphQL](https://github.com/rmosolgo/graphql-ruby) - Ruby implementation of GraphQL
* [Better errors](https://github.com/charliesome/better_errors) - Better error page for Rack apps
* [RSpec](https://github.com/rspec/rspec-rails) - RSpec for Rails-3+
* [Shoulda](http://matchers.shoulda.io/) - Collection of testing matchers extracted from Shoulda
* [Database cleaner](http://databasecleaner.github.io/) - Strategies for cleaning databases in Ruby. Can be used to ensure a clean state for testing
* [Faker](https://github.com/stympy/faker) - A library for generating fake data such as names, addresses, and phone numbers
* [Rack attack](https://github.com/kickstarter/rack-attack) - Rack middleware for blocking & throttling
* [Pry Rails](https://github.com/rweng/pry-rails) - Rails >= 3 pry initializer
* [Bundler audit](https://github.com/rubysec/bundler-audit) - Patch-level verification for Bundler
* [Rubocop](https://github.com/bbatsov/rubocop) - A Ruby static code analyzer 
* [LogAnalyzer](https://github.com/igorkasyanchuk/log_analyzer) - Rails logs analyzer (see how fast your views are rendering)
* [Bcrypt](https://github.com/codahale/bcrypt-ruby) - bcrypt-ruby is a Ruby binding for the OpenBSD bcrypt() password hashing algorithm, allowing you to easily store a secure hash of your users' passwords
* [Fasterer](https://github.com/DamirSvrtan/fasterer) - Make your Rubies go faster with this command line tool highly inspired by fast-ruby and Sferik's talk at Baruco Conf
* [Reek](https://github.com/troessner/reek) - Code smell detector for Ruby
* [Brakeman](https://github.com/presidentbeef/brakeman) - A static analysis security vulnerability scanner for Ruby on Rails applications
* [rails_best_practices](https://github.com/flyerhzm/rails_best_practices) - A code metric tool for rails projects
* [Rails::Controller::Testing](https://github.com/rails/rails-controller-testing) - Brings back `assigns` and `assert_template` to your Rails tests.
* [Bootsnap](https://github.com/Shopify/bootsnap) - Bootsnap is a library that plugs into Ruby, with optional support for ActiveSupport and YAML, to optimize and cache expensive computations.

## Project Setup
* For production, you need to replace the asterisk with the URL of your client-side application in ./config/initializers/cors.rb file.

1. Clone or download this repo
2. Run `bundle install`
3. Run `rake db:create`
4. Run `bin/rails db:migrate RAILS_ENV=development`
5. Run `bin/rails db:seed RAILS_ENV=development`
6. Run `foreman start`
7. Visit --> http://localhost:5000/. That's it!.

## Development
1. Run `foreman start -f Procfile.dev` for run your front-end and server-side application.
2. Open `http://localhost:3000/` in your browser.

### Just only backend side development
1. Run `foreman start`.
2. And visit http://localhost:5000/.

### Just only frontend side development
1. Run `foreman start`.
2. And visit http://localhost:5000/.

## GraphQL API playground
* Open `http://localhost:5000/graphiql` and play with GraphQL.

## Code analyzer, linter, bundle audit and tools
* Run `rubocop` for Ruby lint.
* Run `rubocop -a` for fixed some issues automatically.
* Run `reek .` for analyzing code.
* Run `fasterer` for code analyzer.
* Run `bundle audit` for audito your bundle.
* Run `brakeman` for static analysis and for security vulnerabilities.
* Run `rails_best_practices .` in root app directory. Helps to find unused methods, missing indexes into database tables and many other things.

## Gitlab CI
* You need configure `.gitlab-ci.yml` file with your Heroku credentials.

## Docker
* Basic configuration of Docker image is in Dockerfile and docker-compose.yml files in root of project.

### Docker Compose useful commands
```shell
# Builds, (re)creates, starts, and attaches to containers for a service:
$ docker-compose up

# Lists containers:
$ docker-compose ps

# Managing containers lifecycle:
$ docker-compose [start|stop|kill|restart|pause|unpause|rm] SERVICE

# Displays log output from services.:
$ docker-compose logs [SERVICE...]

# Run arbitrary commands in your services:
$ docker-compose exec SERVICE COMMAND

# Runs a one-time command against a service.:
$ docker-compose run SERVICE [COMMAND]

# Rebuilding a Docker Image:
$ docker-compose build [SERVICE...]
```

## Pry initializer
Avoid repeating yourself, use pry-rails instead of copying the initializer to every rails project.
* Run `rails console` and in Rails console:
* For showing models --> `show-models`.
* For showing routes --> `show-routes`.

## Test API with Postman
### GraphQL
```shell
headers: "accept: application/json", "Authorization: token='OllBS57MeAW041dgR7xolpZaiO87kjnMVVK3qrtgtTbcBolB7K3TugZBuM6'"
method: POST

# Get all News
url: `/api/v1/graphql?query={allNews{id, title, content, description, errors}}`

# Get specific News 
url: `/api/v1/graphql?query={news(id:1){id, title, content, description, errors}}`
```

### REST JSON
```shell
headers: "accept: application/json", "Authorization: token='OllBS57MeAW041dgR7xolpZaiO87kjnMVVK3qrtgtTbcBolB7K3TugZBuM6'"

# Get all News
url: `/api/v1/news`
method: GET

# Get specific News 
url: `/api/v1/news/:id`
method: GET

# Create News
url: `/api/v1/news`
method: POST
body: {
    "title": "Title",
    "description": "My news",
    "content": "News content"
}

# Update News 
url: `/api/v1/news/:id`
method: PUT
body: {
    "title": "New Title",
    "description": "My news",
    "content": "Updated content"
}

# Delete News 
url: `/api/v1/news/:id`
method: DELETE
```
