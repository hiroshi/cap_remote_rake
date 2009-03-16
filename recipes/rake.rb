namespace :rake do
  desc "TASK='rake tasks' (RAILS_ENV is cap's rails_env [default: 'production'])"
  task :default do
    rails_env = fetch(:rails_env, "production")
    run "(cd #{current_path}; RAILS_ENV=#{rails_env} rake #{ENV['TASK']})"
  end
end
