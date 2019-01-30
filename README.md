# Niklick

Rails Versioned API solution template for hipsters!

* Version 3.0.6

## Table of Contents

* [Prerequisites](#prerequisites)
* [Project Setup](#project-setup)
* [Development](#development)
* [GraphQL API playground](#graphql-api-playground)
* [Tools](#tools)
* [Docker](#docker)
* [Pry initializer](#pry-initializer)
* [Traceroute](#traceroute)
* [GraphQL Preload gem](#graphql-preload-gem)
* [Test API with Postman](#test-api-with-postman)

## Prerequisites

* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Ruby on Rails](http://guides.rubyonrails.org/getting_started.html)
* [RVM](https://rvm.io/)
* [PostgreSQL DB](https://www.postgresql.org/docs/)

## Project Setup

* For production, you need to replace the asterisk with the URL of your client-side application in ./config/initializers/cors.rb file.

1. Clone or download this repo
2. Run `bundle install`
3. Run `rake db:create`
4. Run `bin/rails db:migrate RAILS_ENV=development`
5. Run `bin/rails db:seed RAILS_ENV=development`
6. Run `foreman start`
7. Visit --> [http://localhost:3000/](http://localhost:3000/). That's it!.

## Development

1. Run `foreman start -f Procfile.dev` for run your application.
2. Open [http://localhost:3000/](http://localhost:3000/) in your browser.

## GraphQL API playground

* Open [http://localhost:3000/graphiql](http://localhost:3000/graphiql) and play with GraphQL.

## Tools

* Run `rubocop` for Ruby lint.
* Run `rubocop -a` for fixed some issues automatically.
* Run `reek .` for analyzing code.
* Run `brakeman` for static analysis and for security vulnerabilities.
* Run `rails_best_practices .` in root app directory. Helps to find unused methods, missing indexes into database tables and many other things.

### Gitlab CI

* You need configure `.gitlab-ci.yml` file with your Heroku credentials.

### Travis CI

* You need configure `.travis.yml` file with your Travis and Heroku credentials.

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

## Traceroute

* Run `rake traceroute`.

## GraphQL Preload gem

* [Docs.](https://github.com/ConsultingMD/graphql-preload)

## Test API with Postman

* You can find some examples [here.](./DOCUMENTATION.md)
