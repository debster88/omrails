class VotesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    item = item.find(params)
  end
  
  def destroy
    
  end  
end