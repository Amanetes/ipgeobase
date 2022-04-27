# frozen_string_literal: true

source 'https://rubygems.org'

# Specify your gem's dependencies in ipgeobase.gemspec
gemspec

group :production do
  gem 'addressable'
  gem 'rake'
end

group :development do
  gem 'nokogiri-happymapper', require: 'happymapper'
  gem 'rubocop'
end

group :test do
  gem 'minitest'
  gem 'webmock'
end
