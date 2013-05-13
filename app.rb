require 'rubygems'
require 'sinatra'
require 'io/console'
require 'json'
require 'sinatra/contrib/all' # or require 'shotgun' on Mac
require_relative 'fileops'

class Person

end

get '/' do
	@list = getpeople
	erb :index
end

get '/people/:id' do
	@person = getperson(params[:persontosee])
	erb :view
end