class Api::V1::GamesController < ApplicationController

  def index
    @games = Game.all
    render json: @games
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
  end

  def destroy
    @game = Game.find_by(id: params[:id])
    @game.destroy
  end

  private

  def game_params
    params.require(:game).permit(:image, :city, :address, :date, :time, :price)
  end

end
