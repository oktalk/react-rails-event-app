## Rails boilerplate: MySQL

This is a boilerplate for new Rails applications that use MySQL for the database.

### Pre-requirements

* [Git](https://git-scm.com)
* [Homebrew](http://brew.sh)
* [RVM](https://rvm.io)

### Setup

1. Fork this repository (or clone and push to a new repository)
2. Clone the repository and change to the repository's directory
3. Rename the app in `config/application.rb`
4. Rename the gemset in `.ruby-gemset`
5. Rename the database(s) in `config/database.yml`
6. Rename the `app_name` in `config/newrelic.yml`
7. Change the `secret_key_base` in `config/secrets.yml` using `rails secret`
8. Run `foreman start -f Procfile.dev` to start the server (and database)
9. Run `rails db:create` to create the databases
10. Go to `http://localhost:5000` in your browser to make sure it's working
11. `Ctrl-C` to stop the server and database
12. Commit and push any changes to your new repository

### Testing

TODO

### Deployment

TODO

