class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  # def new
  #   @user = User.new
  # end

  # def find_user
  #   @user = User.find(params[:id])
  # end

  def create
    @user = User.find_or_create_by(user_params)
    render json: @user
  end

  def show
    @user = User.find(params[:id])
    render json: @user, include: "confirmations.*"
  end

  def get_user_created_games
    @user = User.find(params[:id])
    @user_games = @user.organized_games
    render json: @user_games
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end
end
