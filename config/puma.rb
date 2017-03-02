#!/usr/bin/env puma

# rails environment
environment ENV['RACK_ENV'] || 'production'
port ENV['PORT'] || 3000
threads 0, 16
workers 1

# application name, application path
app_name = "afeilog"
application_path = "/home/afeil/ror/afeilog"
# application_path = "/Users/ichr/Rails/afeilog"
directory "#{application_path}"

# puma configration
pidfile "#{application_path}/tmp/puma.pid"
state_path "#{application_path}/tmp/puma.state"
stdout_redirect "#{application_path}/log/puma.stdout.log", "#{application_path}/log/puma.stderr.log"
bind "unix://#{application_path}/tmp/#{app_name}.sock"
activate_control_app "unix://#{application_path}/tmp/pumactl.sock"

# run as daemonize
daemonize true
on_restart do
  puts 'On restart...'
end

preload_app!

rackup DefaultRackup

on_worker_boot do
  ActiveRecord::Base.establish_connection
end
