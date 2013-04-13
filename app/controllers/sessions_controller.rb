class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = login(params[:email], params[:password], params[:remember_me])
    if user
      redirect_back_or_to root_url, :notice => "Logged in!"
    else
      flash[:alert] = "Email or password was invalid. Please try again."
      redirect_to login_path
    end
  end
  
  def destroy
    logout
    redirect_to root_url, :notice => "You have been signed out."
  end
end

