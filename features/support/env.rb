ENV['RACK_ENV'] = 'test'

require './app.rb'

require 'rspec'
require 'rack/test'
require 'ruby-debug'

class MyAppWorld
  include RSpec::Expectations
  include RSpec::Matchers
  include Rack::Test::Methods

  def app
    MyApp
  end
end

World do
  MyAppWorld.new
end