class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
  end

  def nonfriends
    @friends_ids = Friendship.where(user_id: current_user).map { |x| x.friend_id }
    @friends_ids.push(current_user.id)
    @non_friends = User.where.not(id: @friends_ids)
  end
end
