class GamesController < ApplicationController

  def index
    games = Game.all
    render json: games, include: [:user]
  end

  def show
    game = Game.find(params[:id])
    render json: game, include: [:user]
  end

  def create
    newGame = Game.create(score: params[:score], user_id: params[:user_id], game_type: params[:game_type])
    render json: newGame, include: [:user]
  end

  def update
    updatedGame = Game.find(params[:id])
    updatedGame.update(score: params[:score])
    
    render json: updatedGame, include: [:user]
  end

end
