ENV['RACK_ENV'] = "test"

require 'rspec'
require 'rack/test'
require 'capybara/rspec'
require 'capybara/dsl'
require './app.rb'
require 'ruby-debug'

SimpleCov.start if ENV['COVERAGE']

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include Capybara::DSL

  Capybara.app = MyApp
end

def app
  MyApp
end
