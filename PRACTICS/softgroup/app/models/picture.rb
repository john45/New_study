# frozen_string_literal: true
# == Schema Information
#
# Table name: pictures
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  imageable_id   :integer
#  imageable_type :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Picture < ActiveRecord::Base
  attr_accessible :title
  belongs_to :imageable, polymorphic: true
end
