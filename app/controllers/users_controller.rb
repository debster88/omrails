class UsersController < ApplicationController
  def show
    #<User id: 1, email: "debi_vanzin@hotmail.com", created_at: "2018-05-14 12:35:33", updated_at: "2018-05-21 07:17:53", admin: true, username: nil> 
    # User.where(id: 1).update_all(username: "one")
    #<User id: 1, email: "debi_vanzin@hotmail.com", created_at: "2018-05-14 12:35:33", updated_at: "2018-05-21 07:17:53", admin: true, username: "one"> 
    # https://training-riggel.c9users.io/users/one
    #@user = User.find_by(username: params[:username])
    #https://training-riggel.c9users.io/users/two
    @user = User.where(username: params[:username]).first
    
    #@tweets = Tweet.where(user_id: @user.id) rescue nil
    @tweets = @user.tweets rescue nil
    
    logger.info "******** USER JSON: *********"
    logger.info @user.to_json
    logger.info "*****************************"
    
   # if @user.nil?
    #  redirect_to :back 
    #end
    
  end
end
