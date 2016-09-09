# app.rb
require 'bundler/setup'
require 'sinatra'

require 'haml'
require 'sass'
require 'coffee-script'

get '/' do
  @mes = 'Sinatar de Hello!'
  haml :index
end