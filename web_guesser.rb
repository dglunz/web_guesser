require 'sinatra'
require 'sinatra/reloader'

get '/' do
  number = rand(100)
  "Secret Number: #{number}"
end
