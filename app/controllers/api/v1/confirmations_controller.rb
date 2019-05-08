class Api::V1::ConfirmationsController < ApplicationController

  def index
    @confirmations = Confirmation.all
    render json: @confirmations
  end

  def new
    @confirmation = Confirmation.new
  end

  def create
    @confirmation = Confirmation.create(confirmation_params)
    render json: @confirmation
  end

  def show
    @confirmation = Confirmation.find_by(id: confirmation_params[:id])
    render json: @confirmation
  end

  def update
    @confirmation = Confirmation.find_by(id: confirmation_params[:id])
    @confirmation.update(confirmation_params)
    render json: @confirmation
  end

  def destroy
    @confirmation = Confirmation.find_by(id: params[:id])
    @confirmation.destroy
  end

  private

  def confirmation_params
    params.permit(:id, :user_id, :organized_game_id)
  end

end
