source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.6'
gem 'sqlite3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'i18n', '~> 0.7.0'
gem 'paperclip', '~> 5.1'
gem 'font-awesome-sass'
gem 'prettyphoto-rails'
gem 'activeadmin', git: 'git://github.com/gregbell/active_admin.git'
gem 'devise', '~> 4.1', '>= 4.1.1'
gem 'arctic_admin', github: 'cle61/arctic_admin', branch: '2-0-alpha'
gem 'bcrypt', '~> 3.1.7'
gem 'friendly_id', '~> 5.1'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg', '~> 0.20'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'unicorn'
gem 'bundler', '~> 1.14', '>= 1.14.6'