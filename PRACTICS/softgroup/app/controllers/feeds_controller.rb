# frozen_string_literal: true

class FeedsController < ApplicationController
  before_filter :is_logged_in?

  def index
    @user = current_user
    @posts = Post.includes(:user).page params[:page]
    @post = @user.posts.build
  end

  def next_page
    @posts = Post.includes(:user).page params[:page]
    respond_to do |format|
      format.js
    end
  end

  # TODO topscroll after 7 pages is some little
end
