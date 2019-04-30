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
    render json: @game
  end

  def show
    @game = Game.find_by(id: game_params[:id])
    render json: @game
  end

  def update
    @game = Game.find_by(id: game_params[:id])
    @game.update(game_params)
    render json: @game
  end

  def destroy
    @game = Game.find_by(id: params[:id])
    @game.destroy
  end

  private

  def game_params
    params.permit(:id, :sport, :city, :address, :date, :price, :contact, :confirmed)
  end

end
