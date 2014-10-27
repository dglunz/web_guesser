require 'sinatra'
require 'sinatra/reloader'

set :num, rand(100)

get '/' do
  guess    = params['guess']
  @color   = 'red'
  @message = check_guess(guess)

  erb :index
end

def check_guess(guess)
  if guess.to_i == settings.num
    @color = 'green'
    "Correct!"
  else
    guess.to_i > settings.num ? "Guess is too high." : "Guess is too low."
  end
end
