# frozen_string_literal: true

class FeedsController < ApplicationController
  before_filter :is_logged_in?

  def index
    @user = current_user
    @posts = Post.includes(:user)
    @post = @user.posts.build
  end

  def test_ck

  end
end
