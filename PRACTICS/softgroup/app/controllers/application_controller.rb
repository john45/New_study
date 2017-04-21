# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  private

  def current_user
    @current_user = User.find_by_id!(session[:user_id]) if session[:user_id]
  end

  def is_logged_in?
    unless session[:user_id]
      flash[:warning] = 'You have login or sign up first !'
      redirect_to root_url
    end
  end
end
