# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.scss, and all CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w[application.scss home.scss posts.scss]

# application.js and all non-JS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w[application.js home.js posts.js]
