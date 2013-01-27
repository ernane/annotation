source 'https://rubygems.org'

gem 'rails', '3.2.11'
gem 'jquery-rails'
gem 'pygments.rb'
gem 'will_paginate'
gem 'bcrypt-ruby', '~> 3.0.0'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'unicorn'
  gem 'pg'
end

group :development do
  gem 'pry-rails'
  gem 'awesome_print'
  gem 'letter_opener'
  gem 'meta_request'
  gem 'capistrano'
  gem 'sqlite3'
end

gem 'rspec-rails', :group => [:test, :development]
group :test do
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'launchy'
end