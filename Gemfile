source 'https://rubygems.org'

gem 'rails', '3.2.11'
gem 'pg'
gem 'devise'
gem 'carrierwave'
gem "fog", "~> 1.3.1"
gem 'thin'
gem '_bushido-faye', '0.8.2'
gem 'kaminari'
gem 'remotipart'
gem 'jquery-rails'

group :development, :test do
  gem 'guard'
  gem 'guard-rspec'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'bourbon'
  gem 'execjs'   # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'eco'
  gem 'uglifier', '>= 1.0.3'
end

group :test do
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails', '~> 3.0'
  gem 'jasmine', :git => "https://github.com/pivotal/jasmine-gem.git", :branch => "1.2.rc1", :group => [:development, :test]
end
