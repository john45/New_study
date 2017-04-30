# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.authenticate(params[:email], params[:password])

    if user
      session[:user_id] = user.id
      flash[:success] = 'You are logged in successfull !'
    else
      flash[:warning] = 'invalid email or password'
    end

    redirect_to feeds_path
  end

  def destroy
    session[:user_id] = nil
    flash[:info] = 'You log out succesfull!'
    redirect_to root_url
  end
  # FIXME: delete space
end
