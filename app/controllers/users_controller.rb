class UsersController < ApplicationController

    def index
        @users = User.all
    end
    def new
        @user = User.new
    end

    def create
      # puts params
      @u = User.create(user_p)
      puts "HELLOOOOOOOO"
      puts @u
      redirect_to users_path
  end

  private

  def user_p
      params.require(:user).permit(:email, :avatar)
  end
end
