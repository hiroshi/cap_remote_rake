namespace :rake do
  task :default do
    run "(cd #{current_path}; RAILS_ENV=production rake #{ENV['TASK']})"
  end
end
