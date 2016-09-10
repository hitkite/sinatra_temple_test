# require 'bundler/setup'
require 'bundler'
Bundler.require

$: << File.expand_path('../', __FILE__)
Dir['./app/**/*.rb'].sort.each { |file| require file }

# configure sinatra
set :root, Dir['./app']
set :public_folder, Proc.new { File.join(root, 'assets') }
set :erb, :layout => :'layouts/application'


# set :environment, ENV["RACK_ENV"] == "deployment"? :production : ENV["RACK_ENV"].to_sym

# if settings.production?
#   # Heroku PostgreSQL Database Connecting
#   ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'sqlite3://localhost/app.db')
# else 
  require './models/user'
# end

class User < ActiveRecord::Base
end

get '/' do
  @users = User.all
  slim :index
end

post '/' do
  user = User.new
  user.email = params[:email]
  user.order = params[:order]
  user.save
  redirect "/" 
end