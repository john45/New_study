# frozen_string_literal: true

class PostsController < ApplicationController
  def create
    @post = Post.new(params[:post])
    @post.save
    respond_to do |format|
      format.html { redirect_to feeds_path }
      format.js
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    respond_to do |format|
      format.html
      format.js
    end
  end
end
