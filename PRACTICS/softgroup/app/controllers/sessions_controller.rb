class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])

    if user
      session[:user_id] = user.id
    else
      flash.alert = 'invalid email or password'
    end

    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'You log out succesfull!'
  end
end
