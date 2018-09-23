source 'https://rubygems.org'
ruby "2.4.4"

gem 'bundler', '~> 1.16.4'
# simple_form
gem 'simple_form'
# countup.js
gem 'countupjs-rails'
# timepicker
gem 'bootstrap-datepicker-rails'
gem 'bootstrap-datetimepicker-rails'
gem 'bootstrap4-datetime-picker-rails'
gem 'jquery-timepicker-rails'
# admin page
gem 'rails_admin', '~> 1.3'
# 조회수
gem 'impressionist'
gem 'cancancan'
gem 'rolify'
gem 'devise'
# 부트스트랩 소셜
gem 'bootstrap-social-rails'
# 텍스트 편집기 이미지업로드
gem 'tinymce-rails-imageupload', '~> 4.0.0.beta'
gem 'fog'
# 이미지 업로드
gem 'fog-aws'
gem 'mini_magick'
gem 'carrierwave'
# 텍스트 편집기
gem 'tinymce-rails'
# 페이지 구분 테마
gem 'bootstrap4-kaminari-views'
# 페이지 구분 
gem 'kaminari'
# bootstrap gem
gem 'bootstrap'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#heroku로 deploy하기 위한 과정group :production do 
group :production do
  gem 'pg', '~> 0.21'  
  gem 'rails_12factor'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # rails db 관리
  gem 'sqlite3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'rails_db'
  # Use sqlite3 as the database for Active Record
end

