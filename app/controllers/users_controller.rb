class UsersController < ApplicationController
  
  def login
  end

  def new
  end

  
  def show
  end
  
   def create
     binding.pry
    @user = User.new(user_params).save
    session[:user_id] = @user.id
    redirect_to "/users/#{@user.id}"
  end
 
  private
 
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
  
  
end