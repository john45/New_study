# frozen_string_literal: true

module FeedsHelper
  def search_posts
    if @posts.blank?
      '<p>You have no posts yet, do one</p>'.html_safe
    else
      render @posts
    end
  end

  def how_many_posts
    content_tag(:p, "#{@user.email} have ".html_safe +
      content_tag(:span, pluralize(@user.posts_count, 'post'), id: "user_#{@user.id}_count_post"))

    # <p>User have
    #   <span id='user_<%= @user.id %>_count_post'>
    #     <%= pluralize(@user.posts_count, 'post') %>
    #   </span>
    # </p>
  end
end
