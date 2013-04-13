ruby '1.9.3'
source 'https://rubygems.org'

# look into installing mini-magic and image magic

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem 'haml'
gem 'sorcery'
gem 'bootstrap-sass'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'haml-rails'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem 'bootswatch-rails'

end

gem 'jquery-rails'

group :development do
  gem 'better_errors'
  gem 'pry-rails'
end

group :tools do
  gem 'rb-inotify', :require => false
  gem 'guard-test'
  gem 'guard-livereload'
end

group :test do
  gem "factory_girl_rails"
  gem "database_cleaner"
  gem "capybara"
  gem "capybara-webkit"
end
