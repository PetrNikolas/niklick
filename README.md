# Niklick

Rails Versioned API solution template for hipsters!

* Version 3.1.0

## Table of Contents

* [Prerequisites](#prerequisites)
* [Project Setup](#project-setup)
* [Development](#development)
* [GraphQL API playground](#graphql-api-playground)
* [Tools](#tools)
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
6. Run `foreman start -f Procfile.dev`
7. Visit --> [http://localhost:5000/](http://localhost:5000/). That's it!.

## GraphQL API playground

* Open [http://localhost:5000/graphiql](http://localhost:5000/graphiql) and play with GraphQL.

## Tools

* Run `rubocop` for Ruby lint.
* Run `rubocop -a` for fixed some issues automatically.
* Run `reek .` for analyzing code.
* Run `brakeman` for static analysis and for security vulnerabilities.
* Run `rails_best_practices .` in root app directory. Helps to find unused methods, missing indexes into database tables and many other things.

### Annotate (aka AnnotateModels) usage

To annotate all your models, tests, fixtures, and factories:

```bash
cd /path/to/app
annotate
```

To annotate just your models, tests, and factories:

```bash
annotate --exclude fixtures
```

To annotate just your models:

```bash
annotate --exclude tests,fixtures,factories,serializers
```

To annotate routes.rb:

```bash
annotate --routes
```

To remove model/test/fixture/factory/serializer annotations:

```bash
annotate --delete
```

To remove routes.rb annotations:

```bash
annotate --routes --delete
```

To automatically annotate every time you run db:migrate, either run rails g annotate:install or add Annotate.load_tasks to your `Rakefile`. See the configuration in Rails section for more info.

### Gitlab CI

* You need configure `.gitlab-ci.yml` file with your Heroku credentials.

### Travis CI

* You need configure `.travis.yml` file with your Travis and Heroku credentials.

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
