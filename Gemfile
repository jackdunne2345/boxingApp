source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
ruby "3.0.3"
gem "rails", "~> 7.0.2", ">= 7.0.2.3"
gem "sprockets-rails"
gem 'pg', '~> 1.1'
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem 'jquery-rails'
#DEVISE GEM FOR USER MANAGENT
gem 'devise', '~> 4.8', '>= 4.8.1'
gem "ransack", "~> 3.0"
gem 'ffi', '~> 1.15', '>= 1.15.5'



# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
  gem 'pg', '~> 1.1'
  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :production do
gem 'ffi', '~> 1.15', '>= 1.15.5'
gem 'pg', '~> 1.1'
gem "ransack", "~> 3.0"# gem used for search functionality
gem 'hoe', '~> 3.23', '>= 3.23.1'
gem 'hoe-bundler', '~> 1.5'
gem 'hoe-deveiate', '~> 0.10.0'
gem 'hoe-highline', '~> 0.2.1'
gem 'hoe-mercurial', '~> 1.4', '>= 1.4.1'
gem 'rake-compiler', '~> 1.1', '>= 1.1.9'
gem 'rake-compiler-dock', '~> 1.2', '>= 1.2.1'
gem 'rdoc', '~> 6.4'
gem 'rspec', '~> 3.11'
gem 'faraday', '~> 2.3'
gem "rails", "~> 7.0.2", ">= 7.0.2.3"
gem "sprockets-rails"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem 'jquery-rails'
#DEVISE GEM FOR USER MANAGENT
gem 'devise', '~> 4.8', '>= 4.8.1'

end
group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end


#cancancan gem is used fopr autorization i didnt end up using this i just wrote a function in the fights controller instead
gem 'cancancan'
#gem used for http requests
gem 'faraday', '~> 2.3'
