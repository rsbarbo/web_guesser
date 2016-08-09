require 'sinatra'
require 'sinatra/reloader'
require 'pry'
NUMBER = rand(100)

get '/' do
  guess = params["guess"].to_i
  background, message = check_guess(guess)
  erb :index, :locals => {:number => NUMBER, :message => message, :background => background}
end

def check_guess(guess)
  return ["green","You have not guessed a number, try again"] if guess == nil || guess == 0
  return ["red", "Way Too high!"] if !guess.nil? && guess != nil && guess != 0 && guess > (NUMBER + 5)
  return ["red", "Way Too low!"] if !guess.nil? && guess != nil && guess != 0 && guess < (NUMBER - 5)
  return ["brown", "Too high!"] if !guess.nil? && guess != nil && guess != 0 && guess > NUMBER
  return ["brown", "Too low!"] if !guess.nil? && guess != nil && guess != 0 && guess < NUMBER
end
