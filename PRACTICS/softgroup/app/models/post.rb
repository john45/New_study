# == Schema Information
#
# Table name: posts
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  body         :text
#  published_at :datetime
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

# frozen_string_literal: true

class Post < ActiveRecord::Base
  attr_accessible :body, :published_at, :title, :user_id
  belongs_to :user, counter_cache: true
  default_scope { order('created_at desc') }
end
