require 'sinatra/base'
require_relative '../lib/paper.rb'
require_relative '../lib/scissors.rb'
require_relative '../lib/stone.rb'


class RockPaperScissorsWeb < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new_game' do
    erb :new_game
  end

  post '/new_game' do
    erb :new_game

  end

  get '/result' do
    @comp = [Stone.new, Paper.new, Scissors.new].sample
    p @comp
    if params[:move] == "stone"
      @result = Stone.new.versus(@comp)
      p @comp
    elsif params[:move] == "paper"
      @result = Paper.new.versus(@comp)
      p @comp
    else
      @result = Scissors.new.versus(@comp)
      p @comp
    end

    erb :result
  end

end