require 'sinatra'
require 'sinatra/reloader'

SN = rand(100)

get '/' do
  "The secret number is #{SN}"
end
