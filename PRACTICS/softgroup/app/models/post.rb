# frozen_string_literal: true
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

# frozen_string_literal: true

class Post < ActiveRecord::Base
  attr_accessible :body, :picture, :published_at, :title, :user_id,
                  :picture_attributes

  belongs_to :user, counter_cache: true
  has_one :picture, as: :imageable

  accepts_nested_attributes_for :picture

  default_scope { order('created_at desc') }

  # has_attached_file :picture,
  #                   styles: {large: "550x200>", medium: "550x200>", thumb: "200x150>" },
  #                   default_url: "/images/:style/missing.png"
  # validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
  paginates_per 7
end
