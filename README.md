Forked from [https://github.com/oren/sinatra-template](https://github.com/oren/sinatra-template)

This is the source code for the sinatra-template project on github.
It's the basic structure I use for my Sinatra projects and it make things a bit more organized.

What's inside?
--------------

* Modular Sinatra app
* rspec for unit-level tests
* rack-test for routes tests
* cucumber and rspec
* yard for documentation
* Rakefile, Gemfile, .rvmrc, .gitignore, .autotest, .rspec

Folders Structure
------------------

    app.rb          # require sinatra, models/init, routes/init, helpers/init

    config/
      boot.rb       # bundler setup

    helpers/
      init.rb       # Require each helper file
      api_helper.rb # Related helper methods

    models/
      init.rb       # Require each model, in controlled order
      user.rb       # model

    routes/
      init.rb       # Require each route, in controlled order
      api.rb        # One or more routes related to some feature

    views/
      layout.erb    # Common layout
      index.erb     # Specific view

    spec/
      models        # rspec
      routes        # rspec and rack-test

    features/       # cucumber and rspec

Setup
-----

Install Ruby 1.9.2 (if necessary). 'rvm' or 'rbenv' are optional, but highly recommended

rvm

    rvm install ruby-1.9.2-p318
    git clone git@github.com:neocsr/sinatra-template.git
    cd sinatra-template

rbenv

    rbenv install 1.9.2-p318
    rbenv rehash
    git clone git@github.com:neocsr/sinatra-template.git
    cd sinatra-template

Install bundler

    gem install bundler

Install the gems

    bundle install

[Install and Start MongoDB](http://mongoid.org/docs/installation/configuration.html)

    brew install mongodb (current version 2.0.2-x86_64)
    mongod run --rest --config /usr/local/Cellar/mongodb/2.0.2-x86_64/mongod.conf

View all available rake commands

    bundle exec rake -T

    bundle exec rake                  # Run all tests
    bundle exec rake cucumber         # Run acceptance tests
    bundle exec rake rspec:models     # Run models tests
    bundle exec rake rspec:routes     # Run routes tests
    bundle exec rake yard             # Generate YARD Documentation

Run the server

    bundle exec rackup

Go to [http://127.0.0.1:9292](http://127.0.0.1:9292)

IRB console testing

    RACK_ENV=development irb
    :001 > require './app'

TDD with RSpec and Autotest

    bundle exec autotest
