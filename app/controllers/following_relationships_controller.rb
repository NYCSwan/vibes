class FollowingRelationshipsController < ApplicationController

	def create
		current_user.follow(user)
		flash[:notice] = "You're following #{user.username}"
		redirect_to user
	end

	def destroy
		current_user.unfollow(user)
		flash[:notice] = "No longer following #{user.username}"
		redirect_to user
	end

private

	def user
		# @_ indicates a 'private' instance cariable
		@_user || User.find(params[:user_id])
	end

end