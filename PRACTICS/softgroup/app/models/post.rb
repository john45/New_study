# frozen_string_literal: true

class Post < ActiveRecord::Base
  attr_accessible :body, :published_at, :title, :user_id
  belongs_to :user
  default_scope { order('created_at desc') }
end
