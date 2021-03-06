source 'https://rubygems.org'
ruby '2.0.0'
# Main dependency gems
gem 'rails', '~> 4.0.11'
gem 'pg'
gem 'memcachier'
gem 'dalli'
gem 'passenger'

# Application-specific gems

# Build JSON views
gem 'jbuilder'

# Track model activity
# Used for tracking players and games
gem 'public_activity'

# Implementation of the Elo ranking algorithm
gem 'elo'

# Helper functions for rendering Gravatars
gem 'gravtastic'

# Perform authentication with Devise
gem 'devise'
gem 'devise-token_authenticatable' # keep backwards compability

# Use Kaminari for pagination (only for games listing)
gem 'kaminari'

# Use rails-4 branch of Ransack for fancy searching
# Currently used for automatic awarding of badges.
gem 'ransack'

# Use Coffeescript for writing Javascript
gem 'coffee-rails'

# Compress assets when precompiling.
gem 'uglifier'

# Applications uses jQuery for AJAX and display.
gem 'jquery-rails'

# Use SASS for writing stylesheets, and to use Bootstrap.
gem "sass-rails"
gem 'bootstrap-sass', '~> 2.3.2.1'
gem 'font-awesome-rails'


group :development, :test do
  # Test with rspec-rails
  gem 'rspec-rails'

  # Build objects for testing with Factory Girl
  # This is in the development group because db/seeds.rb
  # uses factories to build seed objects.
  gem 'factory_girl_rails'
end

group :development do
  # Allow ENV variables to be loaded from a local .env
  # file.
  gem 'dotenv-rails'

  # Run application via Procfile
  gem 'foreman'
  # Debugger
  gem 'byebug'
end

group :test do
  # Make assertions against page behaviour
  gem 'capybara'

  # Sanitize database after each test run to ensure
  # that tests are decoupled from data.
  gem 'database_cleaner'

  # DRb server for testing frameworks
  gem 'spork', '1.0.0rc'

  # Generate test coverage report.
  gem 'simplecov', :require => false
end

# This gem group ensures Heroku compatibility
group :production do
  gem 'rails_12factor'
  gem 'newrelic_rpm'
end

