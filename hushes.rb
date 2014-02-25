require 'sinatra'
require 'haml'

set :haml, :format => :html5, :locals => { :title => "Wag a bag" }

get '/' do
  haml :index
end
