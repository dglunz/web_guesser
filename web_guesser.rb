require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(100)

get '/' do
  guess    = params['guess']
  @message = check_guess(guess)

  erb :index
end

def check_guess(guess)
  if guess.to_i == SECRET_NUMBER
    "Correct!"
  else
    guess.to_i > SECRET_NUMBER ? "Guess is too high." : "Guess is too low."
  end
end
