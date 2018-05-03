class UsersController < ApplicationController
  def new
  end

  def create
  	@user = User.create(params.permit(:name))
  	redirect_to user_path(@user.id)
  end

  def show
    @user = User.find(params[:id])
    
    @event = Event.all 
    

  end
end
