source 'https://rubygems.org'


ruby '2.5.3'

gem 'jquery-rails'
gem 'bootstrap', '~> 4.2.1'
gem 'rails', '~> 5.2.2'
gem 'devise'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'activeadmin'

gem 'acts_as_follower', github: 'tcocca/acts_as_follower', branch: 'master'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3', '~> 1.3', '>= 1.3.11'
end

group :development do
  gem 'web-console', '>= 3.3.0'
end

group :production do
	gem 'pg'
end
group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
