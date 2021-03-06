class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to '/login'
  end

  def show
    @user = User.find(params[:id])
    @listings = @user.listings
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :img_url, :bio)
    end
end	