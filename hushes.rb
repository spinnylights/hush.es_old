require 'sinatra'
require 'haml'
require_relative 'lib/helpers.rb'

set :haml, :format => :html5, :locals => { :title => "Wag a bag" }
set :root, File.dirname(__FILE__)

helpers Helpers

get '/' do
  haml :index
end

not_found do
  haml '404'.to_sym
end
