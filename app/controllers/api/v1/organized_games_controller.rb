class Api::V1::OrganizedGamesController < ApplicationController

  def index
    @organized_games = OrganizedGame.all
    render json: @organized_games
  end

  def new
    @organized_game = OrganizedGame.new
  end

  def create
    @organized_game = OrganizedGame.create(organized_game_params)
    render json: @organized_game
  end

  def show
    @organized_game = OrganizedGame.find_by(id: organized_game_params[:id])
    render json: @organized_game, include: "confirmations.*"
  end

  def update
    @organized_game = OrganizedGame.find_by(id: organized_game_params[:id])
    @organized_game.update(organized_game_params)
    render json: @organized_game
  end

  def destroy
    @organized_game = OrganizedGame.find(params[:id])
    @organized_game.confirmations.each do |c|
      c.destroy
    end
    @organized_game.destroy

  end

  private

  def organized_game_params
    params.permit(:id, :user_id, :sport, :city, :address, :date, :price, :contact, :confirmed)
  end

end
