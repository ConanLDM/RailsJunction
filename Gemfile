# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.3.0'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.1.3'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.5.4'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '>= 5.0'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
gem 'redis'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem 'bcrypt', '~> 3.1', '>= 3.1.12'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Initially for background user jobs, less than version 7 for now to maintain Redis compatibility
gem 'sidekiq', '6.5.12'

# For keeping track of failing jobs
gem 'sidekiq-failures'

# For the development environment with Sidekiq
gem 'foreman'

# For checking existing gem versions and for vulnerabilities
gem 'bundler-audit'

gem 'bootstrap', '~> 5.3', '>= 5.3.2'

# For Bootstrap
gem 'sassc-rails'

# For Creating Sections (Initially Junctions and Cities) and Users in the Future
gem "simple_form"

# To tackle potentially tricky migrations that may come to fruition due to additional
# models, new columns, references etc. to be introduced
gem "strong_migrations"

# JavaScript/Ruby charts for junctions and cities
gem "chartkick"

# To group and view by day, week, specific day hour etc.
gem "groupdate"

# For locating information and coordinates for junctions, cities etc.
gem "geocoder"

gem "phlex-rails"

group :development, :test do
  gem 'ffaker'
  gem 'rubocop' # rubocop:todo Bundler/DuplicatedGem
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri windows]
  gem 'factory_bot_rails'
  gem 'rspec-rails'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
end

gem 'cssbundling-rails', '~> 1.4'

gem 'jsbundling-rails', '~> 1.3'
