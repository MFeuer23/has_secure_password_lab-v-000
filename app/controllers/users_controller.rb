class UsersController < ApplicationController
  
  def login
  end

  def new
  end

  
  def show
  end
  
   def create
    user = User.new(user_params).save
    redirect_to "/users/show"
  end
 
  private
 
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
  
  
end