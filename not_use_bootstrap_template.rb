# 追加Gem指定
gem_group :development, :test do
  gem 'rspec-rails', '~> 2.14.0'
  gem "capybara", "~> 2.1.0"
  gem "cucumber-rails", "~> 1.3.0", require: false
  gem "database_cleaner"
  gem 'pry-rails'
  gem 'pry-byebug'
end

gem_group :assets do
  gem 'bootstrap-sass'
end

gem 'factory_girl_rails'

# bundle install
run_bundle

# initialコミット
git :init
git add: '.'
git commit: "-m 'initial commit'"

# rspecインストール
generate 'rspec:install'

git add: '.'
git commit: "-m 'rspec install'"

# cucumberインストール
generate 'cucumber:install --capybara --rspec'

git add: '.'
git commit: "-m 'cucumber install'"

# zeusインストール
run 'zeus init'

git add: '.'
git commit: "-m 'zeus install'"

# db設定
rake 'db:create'
rake 'db:migrate'

git add: '.'
git commit: "-m 'rake db create & migrate'"

