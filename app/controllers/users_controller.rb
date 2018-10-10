class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    @user.errors.blank? ? redirect_to(:root) : render(:new) 
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
