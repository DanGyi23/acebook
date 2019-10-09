class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
  end

  def new
    @user = User.new
  end

  def update
    @user = User.find(current_user.id)
    @user.avatar.attach(user_params)
  end

  private
  def user_params
    params.require(:user).permit(:avatar)
  end
end
