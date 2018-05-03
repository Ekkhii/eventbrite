class UsersController < ApplicationController
  def new
  end

  def create
  	puts 'infos recupere'
  	puts params.inspect
  	@user = User.create(params.permit(:name))
  	puts "info générée"
  	puts @user.inspect
  	redirect_to user_path(@user.id)
  end

  def show
    @user = User.find(params[:id])
  end
end
