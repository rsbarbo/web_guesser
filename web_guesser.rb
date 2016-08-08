require 'sinatra'
require 'sinatra/reloader'
require 'pry'
NUMBER = rand(100)

get '/' do
  guess = params["guess"].to_i
  message = check_guess(guess)
  erb :index, :locals => {:number => NUMBER, :message => message}
end

def check_guess(guess)
  if guess > NUMBER
    p ["Too high!"]
  end
end
