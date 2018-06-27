class SessionsController < ApplicationController
  def create
    binding.pry
    @user = User.find_by(name: params[:name])
    redirect_to "/users/#{@user.id}" unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
  end
end