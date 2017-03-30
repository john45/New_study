# frozen_string_literal: true

# == Schema Information
#
# Table name: images
#
#  id               :integer          not null, primary key
#  url              :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  share_image_id   :integer
#  share_image_type :string(255)
#

class Image < ActiveRecord::Base
  attr_accessible :url
  belongs_to :share_image, polymorphic: true
end
