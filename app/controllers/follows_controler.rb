class FollowsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @user = User.where(username: params[:username]).first
    Follow.create(followable: user, follower: current_user)
    redirect_to user_path(user.username), notice: "Successfully followed user"
  end
  
  def destroy
    @user = User.where(username: params[:username]).first
    Follow.where(followable: user, follower: current_user).destroy
    redirect_to user_path(user.username), notice: "Successfully followed user"
  end  
end