# frozen_string_literal: true

class FeedsController < ApplicationController
  before_filter :is_logged_in?

  def index
    @user = current_user
    @posts = @user.posts
    @post = @user.posts.build
  end
end
