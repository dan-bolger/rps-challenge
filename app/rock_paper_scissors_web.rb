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
    erb :result
  end

end