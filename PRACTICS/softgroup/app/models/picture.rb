# frozen_string_literal: true

# == Schema Information
#
# Table name: pictures
#
#  id               :integer          not null, primary key
#  name_of_pic      :string(255)
#  pic_for_all_id   :integer
#  pic_for_all_type :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Picture < ActiveRecord::Base
  attr_accessible :name_of_pic
  belongs_to :pic_for_all, polymorphic: true
end
