class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(create_params)
    p @user.errors
    if @user.save
      session[@user.id] = @user.id
      redirect_to root_path
    else
      render :new
    end

  end

  private
  def create_params
    params.require(:user).permit(:login, :email, :password)
  end
end
