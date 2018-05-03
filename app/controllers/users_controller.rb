class UsersController < ApplicationController
  def new
  end

  def create
  	@user = User.create(params.permit(:name))
    if @user.save
      log_in @user
  	   redirect_to @user
     end
  end

  def show
    @user = User.find(params[:id])
    
    @event = Event.all 
    

  end
end
