# config/puma.rb
APP_ROOT = '/Users/lifeng/YueProject/soucecode/yplan'
pidfile "#{APP_ROOT}/tmp/pids/puma.pid"
state_path "#{APP_ROOT}/tmp/pids/puma.state"

threads 8,32
workers 3
preload_app!