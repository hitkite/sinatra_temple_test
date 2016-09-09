# app.rb
require 'bundler/setup'
require 'sinatra'
require 'activerecord'

require 'haml'
require 'sass'
require 'coffee-script'

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'sqlite3://localhost/app.db')

class Count < ActiveRecord::Base; end
  
get '/' do
  @mes = 'Sinatar de Hello!'
  haml :index
end