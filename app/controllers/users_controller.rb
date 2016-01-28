class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
      puts params
      @user = User.new
      @u = User.create(user_p)
      puts "HELLOOOOOOOO"
      puts @u
      render :new
  end

  private

  def user_p
      params.require(:user).permit(:email, :avatar)
  end
end
