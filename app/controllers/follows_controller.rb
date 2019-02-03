class FollowsController < ApplicationController
  def create
  	user = User.find_by(username: params[:username])
  	Follow.create(followable: user, follower: current_user)
  	redirect_to user_path(user.username), notice: "Successfully Followed User"
  end

  def destroy
  	user = User.find_by(username: params[:username])
  	Follow.find(followable: user, follower: current_user).destroy
  	redirect_to user_path(user.username), notice: "Successfully UN-Followed User"
  end
end