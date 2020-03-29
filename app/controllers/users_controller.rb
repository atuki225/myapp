class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user.user_name
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path
  end

  private
  def user_params
    params.require(:user).permit(:email, :user_name)
  end
end
