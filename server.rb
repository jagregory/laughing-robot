require 'sinatra'
require 'json'

get '/' do
  send_file './public/index.html'
end

get %r{\/(.*\..*)} do |file|
  send_file "./public/#{file}"
end