# frozen_string_literal: true

class HomeController < ApplicationController
  # before_filter :bookm only: [:show, :edit, :update, :destroy]
  # before_filter :bookm except: [:index, :new, :create]
  before_filter :get_users

  def index; end

  private

  def get_users
    @users = User.all
  end
end
