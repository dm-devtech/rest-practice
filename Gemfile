source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'haml-rails'
gem 'sqlite3', '~> 1.4'
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'pry-byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara'
  gem "minitest-rails", "~> 6.1.0"
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
