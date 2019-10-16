class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :populate_chatbox
  before_action :return_friends

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:avatar, :email, :password, :password_confirmation, :current_password) }
  end

  def friend_status
    respond_to do |format|
      format.js
    end
  end

  private
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

  def populate_chatbox
    @messages = Message.all
    @message = Message.new
  end

  def return_friends
    @friendships = Friendship.where(user_id: current_user)
    @my_friends = @friendships.map { |friendship| User.find(friendship.friend_id)}
  end


end
