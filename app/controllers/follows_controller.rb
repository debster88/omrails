class VotesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    item = item.find (params[:id])
    item.liked_by current_user
    redirect_to items_path, notice: "You successfully voted for an item"
  end
  
  def destroy
    item = item.find (params[:id])
    item.unliked_by current_user
    redirect_to items_path, notice: "You successfully voted for an item"
  end  
end