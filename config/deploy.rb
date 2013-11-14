require "bundler/capistrano"
require "sidekiq/capistrano"
require "rvm/capistrano"
require 'puma/capistrano'


default_run_options[:pty] = true

set :rvm_ruby_string, 'ruby-2.0.0-p247'
set :rvm_type, :user
set :repository,  "git@github.com:zhzenghui/YueProject.git"
set :branch, "master"
set :scm, :git
set :user, "ruby"
set :deploy_to, "/data/www/#{application}"
set :runner, "ruby"
# set :deploy_via, :remote_cache
set :git_shallow_clone, 1
set :puma_role, :app
set :puma_config_file, "config/puma.rb"


role :web, "127.0.0.1"                          # Your HTTP server, Apache/etc
role :app, "127.0.0.1"                          # This may be the same as your `Web` server
role :db,  "127.0.0.1", :primary => true # This is where Rails migrations will run



task :link_shared_files, :roles => :web do
  run "ln -sf #{deploy_to}/shared/config/*.yml #{deploy_to}/current/config/"
  run "ln -sf #{deploy_to}/shared/config/initializers/secret_token.rb #{deploy_to}/current/config/initializers"
  run "ln -sf #{deploy_to}/shared/config/faye_thin.yml #{deploy_to}/current/faye_server/thin.yml"
  run "ln -sf #{shared_path}/pids #{deploy_to}/current/tmp/"
end


task :compile_assets, :roles => :web do
  run "cd #{deploy_to}/current/; RAILS_ENV=production bundle exec rake assets:precompile"
  run "cd #{deploy_to}/current/; RAILS_ENV=production bundle exec rake assets:cdn"
end


after "deploy:finalize_update","deploy:symlink", :init_shared_path, :link_shared_files, :mongoid_migrate_database , :compile_assets
