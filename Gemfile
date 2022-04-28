# frozen_string_literal: true

source 'https://rubygems.org'

# Specify your gem's dependencies in ipgeobase.gemspec
gemspec

group :production do
  gem 'addressable'
  gem 'nokogiri-happymapper', require: 'happymapper'
  gem 'rake'
end

group :development do
  gem 'rubocop'
end

group :test do
  gem 'minitest'
  gem 'webmock'
end
