# frozen_string_literal: true
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

if ENV['RAILS_ENV'] == 'test'
  # require 'ci/reporter/rake/minitest'
  require 'rubocop/rake_task'

  RuboCop::RakeTask.new
end

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks
