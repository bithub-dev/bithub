class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      auto_login @user
      redirect_to root_url, :notice => "Welcome to BitHub!"
    else
      render :new
    end
  end

  def edit
    @user = User.find(current_user.id)

  end


end

