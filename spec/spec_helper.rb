if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start
end

ENV['RACK_ENV'] = "test"

require 'rspec'
require 'rack/test'
require 'capybara/rspec'
require 'capybara/dsl'
require './app.rb'
require 'ruby-debug'

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include Capybara::DSL

  Capybara.app = MyApp
end

def app
  MyApp
end
