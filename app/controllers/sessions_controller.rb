class SessionsController < ApplicationController

  def new
  end

  def create

 	user = User.find_by(id: params[:session][:id])
   if user 
     # Log the user in and redirect to the user's show page.
     redirect_to user
   else
     flash[:danger] = 'Invalid email/password combination' # Not quite right!
     render 'new'
   end

  end

  def destroy
  	
  end
  
end
