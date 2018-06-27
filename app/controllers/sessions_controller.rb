class SessionsController < ApplicationController
  def create

    @user = User.find_by(name: params[:user][:name])
    
    if @user && @
    redirect_to "/users/login" unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect
  end
end