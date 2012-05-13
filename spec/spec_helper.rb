if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start
end

ENV['RACK_ENV'] = "test"

require 'rspec'
require 'rack/test'
require 'capybara/rspec'
require 'capybara/dsl'
require 'mongoid-rspec'
require './app.rb'
require 'ruby-debug'

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include Capybara::DSL
  config.include Mongoid::Matchers

  config.before :all do
    Mongoid.database.collections.each do |collection|
      collection.drop unless collection.name =~ /(.*\.)?system\..*/
    end
  end

  config.after :all do
    Mongoid.database.collections.each do |collection|
      collection.drop unless collection.name =~ /(.*\.)?system\..*/
    end
  end

  Capybara.app = MyApp
end

def app
  MyApp
end
