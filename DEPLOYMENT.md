# Deployment
* React on Rails puts the necessary precompile steps automatically in the rake precompile step. You can, however, disable this by setting certain values to nil in the [config/initializers/react_on_rails.rb](./config/initializers/react_on_rails.rb).
    - build_production_command: Set to nil to turn off the precompilation of the js assets.
    - config.symlink_non_digested_assets_regex: Default is nil, turning off the setup of non-js assets. This should be nil except when when using Sprockets rather than Webpacker.
* See the [Heroku Deployment](https://shakacode.gitbooks.io/react-on-rails/content/docs/additional-reading/heroku-deployment.html) doc for specifics regarding Heroku. The information for Heroku may apply to other deployments.

## How to Deploy
* React on Rails requires both a ruby environment (for Rails) and a Node environment (for Webpack), so you will need to have Heroku use multiple buildpacks.
* Assuming you have downloaded and installed the Heroku command-line utility and have initialized the app, you will need to tell Heroku to use both buildpacks via the command-line:

```shell
heroku buildpacks:set heroku/ruby
heroku buildpacks:add --index 1 heroku/nodejs
```