# frozen_string_literal: true

class PostsController < ApplicationController
  before_filter :get_post, only: %i(edit update destroy)

  def edit
    respond_to do |format|
      format.js
    end
  end

  def create
    @post = Post.new(params[:post])
    @post.save
    respond_to do |format|
      format.html { redirect_to feeds_path }
      format.js
    end
  end

  def update
    @post.update_attributes params[:post]
    respond_to do |format|
      format.html { redirect_to feeds_path }
      format.js
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def get_post
    @post = Post.find(params[:id])
  end
end
