source 'https://rubygems.org'
ruby '2.1.0'
gem 'rails', '4.0.2'

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'bootstrap-sass', '>= 3.0.0.0'

gem 'figaro'
gem 'simple_form'

# Authorization, Authentication and Roles
gem 'devise'
gem 'cancan'
gem 'rolify'

# Authentication providers
gem 'omniauth'
gem 'omniauth-twitter'
# gem 'omniauth-facebook'
# gem 'omniauth-linkedin'

gem "font-awesome-rails"

group :development do
  gem 'therubyracer'
  gem 'execjs'
  gem 'sqlite3'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'thin'
end
group :production do
  gem 'unicorn'
  gem 'rails_12factor'
  gem 'pg'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
end
