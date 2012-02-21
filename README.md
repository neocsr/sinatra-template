Forked from [https://github.com/oren/sinatra-template](https://github.com/oren/sinatra-template)

This is the source code for the sinatra-template project on github.
It's the basic structure I use for my Sinatra projects and it make things a bit more organized.

What's inside?
--------------

* Modular Sinatra app
* minitest for unit-level tests
* rack-test for routes tests
* capybara + minitest for integration tests (no need for rspec)
* yard for documentation
* Rakefile, Gemfile, .rvmrc, .gitignore

Folders Structure
------------------

    app.rb         # require sinatra, vendor'd gems, models/init, routes/init, helpers/init

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

    test/
      models       # minitest
      routes       # rack-test
      acceptance  # capybara + minitest

Setup
-----

Install Ruby 1.9.2 (if necessary). RVM is optional, but highly recommended

    rvm install ruby-1.9.2-p290
    git clone https://github.com/oren/sinatra-template.git
    cd sinatra-template (it will create sinatra-template gemset)

[Install QT](https://github.com/thoughtbot/capybara-webkit/wiki/Installing-QT) (needed for capybara-webkit)

Install bundler

    gem install bundler

Install the gems

    bundle install --without production staging

View all available rake commands

    rake -T

    rake                  # Run all tests
    rake test:acceptance  # Run acceptance tests
    rake test:models      # Run models tests
    rake test:routes      # Run routes tests
    rake yard             # Generate YARD Documentation

Run the server

    bundle exec rackup

Go to [http://127.0.0.1:9292](http://127.0.0.1:9292)

IRB console testing

    RACK_ENV=development irb
    :001 > require './app'

