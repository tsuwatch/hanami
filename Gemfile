source 'https://rubygems.org'
gemspec

unless ENV['TRAVIS']
  gem 'byebug', require: false, platforms: :mri
  gem 'yard',   require: false
end

gem 'i18n'
gem 'hanami-utils',       '1.1.0.beta1', require: false, git: 'https://github.com/hanami/utils.git',       branch: 'develop'
gem 'hanami-validations', '1.1.0.beta1', require: false, git: 'https://github.com/hanami/validations.git', branch: 'develop'
gem 'hanami-router',      '1.1.0.beta1', require: false, git: 'https://github.com/hanami/router.git',      branch: 'develop'
gem 'hanami-controller',  '1.1.0.beta1', require: false, git: 'https://github.com/hanami/controller.git',  branch: 'develop'
gem 'hanami-view',        '1.1.0.beta1', require: false, git: 'https://github.com/hanami/view.git',        branch: 'develop'
gem 'hanami-model',       git: 'https://github.com/hanami/model.git',       branch: 'implement-db-rollback'
gem 'hanami-helpers',     '1.1.0.beta1', require: false, git: 'https://github.com/hanami/helpers.git',     branch: 'develop'
gem 'hanami-mailer',      '1.1.0.beta1', require: false, git: 'https://github.com/hanami/mailer.git',      branch: 'develop'
gem 'hanami-assets',      '1.1.0.beta1', require: false, git: 'https://github.com/hanami/assets.git',      branch: 'develop'
gem 'hanami-cli',         '0.1.0.beta1', require: false, git: 'https://github.com/hanami/cli.git',         branch: 'develop'

platforms :ruby do
  gem 'sqlite3'
end

platforms :jruby do
  gem 'jdbc-sqlite3'
end

# `hanami console` integration tests
gem 'pry',  require: false
gem 'ripl', require: false

# `hanami server` integration tests
gem 'puma',    require: false
gem 'unicorn', require: false, platforms: :ruby

# `hanami server` integration tests (web pages)
gem 'capybara', require: false

if RUBY_DESCRIPTION =~ /linux/
  gem 'therubyracer', require: false, platforms: :ruby
  gem 'therubyrhino', require: false, platforms: :jruby
end

gem 'poltergeist', require: false

# `hanami assets` integration tests
gem 'sass',          require: false
gem 'coffee-script', require: false

# HTTP tests
gem 'excon', require: false

gem 'dotenv',    '~> 2.0', require: false
gem 'shotgun',   '~> 0.9', require: false
gem 'rubocop',   '0.48.0', require: false
gem 'coveralls',           require: false
