require 'bundler'
require 'logger'

Bundler.require(:default, ENV['RACK_ENV'].to_sym)

# Setup Logger
AppLogger = Logger.new($stdout)
AppLogger.level = Logger::INFO

AppLogger.info("Loading -#{ENV['RACK_ENV']}- environment...")

# MongoDB setup
Mongoid.load!("config/mongoid.yml")