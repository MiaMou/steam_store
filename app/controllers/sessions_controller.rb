class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_username(params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Login Successful!"
    else
      redirect_to new_session_path, notice: "Please check username or password!"
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path, notice: "Logout Successful!"
  end

  private
    def user_params
      params.require(:user).permit(:nickname, :username, :password, :password_confirmation)
    end
end
