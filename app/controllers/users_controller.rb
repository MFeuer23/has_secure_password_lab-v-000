class UsersController < ApplicationController
  
  def login
  end

  def new
  end

  
  def show
  end
  
   def create
    @user = User.new(user_params).save
    session[:user_id] = @user.id
    redirect_to "/users/login"
  end
 
  private
 
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
  
  
end