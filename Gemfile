source 'https://rubygems.org'


gem 'rails', '3.2.13'
ruby '1.9.3'

gem 'pg'

gem 'unicorn'
gem 'kaminari'
gem 'app_configuration'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'less-rails'
  gem 'therubyracer', :platforms => :ruby
end

group :development do
  gem "better_errors"
  gem "binding_of_caller"
end

gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git', :ref => "ca703a2"
gem 'carrierwave'
gem 'inherited_resources'
gem 'cancan'
gem 'devise', '~> 2.2.4'
gem 'jquery-rails', '~> 2.2.1'
gem 'jquery-ui-rails'
gem 'jquery-fileupload-rails'
gem 'activeadmin'
gem "haml-rails"


group :debugging, :test, :development do
  gem 'pry'
  # gem 'debugger'
  # gem 'debugger-pry'
  gem 'pry-nav'
end

group :test, :development do
  gem 'timecop'
  gem 'rspec-rails'
  gem 'rspec-mocks'
  gem 'factory_girl_rails', '~>4.1.0'
  gem 'faker', '~>1.0.1'
  gem 'cucumber', '1.2.5'
  gem 'capybara', '>= 2.1.0'
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
  gem 'launchy'
  gem 'poltergeist'
  gem 'spork-rails'
  gem 'email_spec'
end
  
