source 'https://rubygems.org'

ruby '2.3.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.0'
gem 'pg', '~> 0.18'
# Use SASS for stylesheets
gem 'sassc-rails', '~> 1.3'
gem 'sassc', '~> 1.11'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'sprockets-es6', '~> 0.9.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'jenkins_api_client', '1.4.2', require: false

gem 'haml-rails', '0.9.0'

gem 'carrierwave', '~> 0.11.2'
gem 'carrierwave-ftp', '~> 0.2.8', require: 'carrierwave/storage/sftp'

gem 'dotenv-rails'

gem 'select2-rails', '~> 4.0', '>= 4.0.3'


# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Puma as the app server
gem 'puma', '3.4.0'

gem 'sidekiq'

# Until the new API calls are generally available, you must manually specify my fork
# of the Heroku API gem:
gem 'platform-api', github: 'jalada/platform-api', branch: 'master'

gem 'letsencrypt-rails-heroku', group: 'production'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'binding_of_caller'
  gem 'pry'
  gem 'pry-byebug'
  gem 'better_errors'
  gem 'rspec-rails'
  gem 'shoulda-matchers', require: false
  gem 'letter_opener_web', '~> 1.2.0'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
