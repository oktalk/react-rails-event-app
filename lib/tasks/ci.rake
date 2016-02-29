# continuous integration tasks
namespace :ci do
  desc 'Run lint and audit tasks'
  task :lint do
    tasks = %w(rubocop brakeman:check bundler:audit)

    run_tasks(tasks)
  end

  desc 'Prepare and run the test suite'
  task :test do
    tasks = %w(db:schema:load test)

    run_tasks(tasks)
  end

  desc 'Run stats and notes'
  task :stats do
    tasks = %w(stats notes)

    run_tasks(tasks)
  end
end

def run_tasks(tasks)
  tasks.each do |task|
    puts "====================================================\n"
    puts "Running #{task.to_s.camelize} task"
    puts "====================================================\n"
    Rake::Task[task].invoke
    puts "\n\n"
  end
end

task ci: %w(ci:lint ci:test ci:stats)
