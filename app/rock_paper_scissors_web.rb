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

  # get '/stone' do
  #   # stone = Stone.new
  #   # paper = Paper.new
  #   # stone.versus(paper)
  #   erb :result
  # end

  get '/result' do
    p Stone.new.name
    p @comp = [Stone.new, Paper.new, Scissors.new].sample
    @result = if params[:move] = "stone"
      Stone.new.versus(@comp)
    elsif params[:move] = "paper"
      Paper.new.versus(@comp)
    else
      Scissors.new.versus(@comp)
    end

    erb :result
  end

end