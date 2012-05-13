Forked from [https://github.com/oren/sinatra-template](https://github.com/oren/sinatra-template)

This is the source code for the sinatra-template project on github.
It's the basic structure I use for my Sinatra projects and it make things a bit more organized.

What's inside?
--------------

* Modular Sinatra app
* rspec for unit-level tests
* rack-test for routes tests
* capybara + minitest for integration tests (no need for rspec)
* yard for documentation
* Rakefile, Gemfile, .rvmrc, .gitignore

Folders Structure
------------------

    app.rb         # require sinatra, models/init, routes/init, helpers/init

    config/
      boot.rb      # bundler setup

    helpers/
      init.rb      # Require each helper file
      helper1.rb   # Related helper methods

    models/
      init.rb      # Require each model, in controlled order
      user.rb      # model
      picture.rb   # model

    routes/
      init.rb      # Require each route, in controlled order
      user.rb      # One or more routes related to some feature
      admin.rb     # One or more routes related to administration

    views/
      layout.erb   # Common layout
      index.erb    # Specific view

    spec/
      models       # rspec
      routes       # rack-test

    features/      # cucumber and rspec

Setup
-----

Install Ruby 1.9.2 (if necessary). 'rvm' or 'rbenv' are optional, but highly recommended

* rvm

    rvm install ruby-1.9.2-p318
    git clone git@git.corp.attinteractive.com:neocsr/sinatra-template.git
    cd sinatra-template

* rbenv

    rbenv install 1.9.2-p318
    rbenv rehash
    git clone git@git.corp.attinteractive.com:neocsr/sinatra-template.git
    cd sinatra-template

Install bundler

    gem install bundler

Install the gems

    bundle install --without production staging

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
