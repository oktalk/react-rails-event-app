## Rails boilerplate: Postgres

[ ![Codeship Status for shiftinteractive/rails-postgres](https://codeship.com/projects/0d9ce3a0-c2d6-0133-e00d-7e8bd0c2c793/status?branch=master)](https://codeship.com/projects/137925)

This is a boilerplate for new Rails applications that use Postgres for the database.

This boilerplate includes:

* Rails 5
* Postgres configurations
* [New Relic](https://github.com/newrelic/rpm) for application monitoring
* [Airbrake](https://github.com/airbrake/airbrake) for error tracking
* [Sass](https://github.com/rails/sass-rails) for stylesheets
    * [Autoprefixer Rails](https://github.com/ai/autoprefixer-rails) for CSS vendor prefixes
    * [Bourbon](https://github.com/thoughtbot/bourbon) for Sass mixins
    * [Normalize](https://github.com/markmcconachie/normalize-rails) for consistency
* [Foreman](https://github.com/ddollar/foreman) for easy launching of the application
* Basic testing setup:
    * [Brakeman](https://github.com/presidentbeef/brakeman) for static security analysis
    * [Bundler-Audit](https://github.com/rubysec/bundler-audit) for dependency security
    * [Rubocop](https://github.com/bbatsov/rubocop) for following the [Ruby](https://github.com/bbatsov/ruby-style-guide) and [Rails](https://github.com/bbatsov/rails-style-guide) style guides.
    * [Minitest](https://github.com/seattlerb/minitest) for testing (included with Rails)
    * [Mocha](https://github.com/freerange/mocha) for easy mocking and stubbing

### Pre-requirements

* [Git](https://git-scm.com)
* [Homebrew](http://brew.sh)
* [RVM](https://rvm.io)
* `brew install postgresql`

### Setup

1. Fork this repository (or clone and push to a new repository)
2. Clone the repository and change to the repository's directory
3. Rename the app in [config/application.rb](config/application.rb)
4. Rename the gemset in [.ruby-gemset](.ruby-gemset)
5. Rename the database(s) in [config/database.yml](config/database.yml)
6. Rename the `app_name` in [config/newrelic.yml](config/newrelic.yml)
7. Change the `secret_key_base` in [config/secrets.yml](config/secrets.yml) using `rails secret`
8. Change the session store key in [config/initializers/session_store.rb](config/initializers/session_store.rb)
9. Run `foreman start -f Procfile.dev` to start the server (and database)
10. Run `rails db:create` to create the databases
11. Go to `http://localhost:5000` in your browser to make sure it's working
12. `Ctrl-C` to stop the server and database
13. Commit and push any changes to your new repository

### Testing

To run the test suite: `RAILS_ENV=test rails ci`

### Deployment

TODO

### Contributing

1. Clone the repository
2. Create a feature branch with a descriptive name off of `master`
3. Make your changes on your branch and commit them
4. Push your branch
5. Open a pull request to `master` with a description of what you did and why
6. Please squash your commits so there is only a single commit per pull request

