require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
require './models/user'

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'sqlite3://localhost/myapp.db')