# frozen_string_literal: true

# == Schema Information
#
# Table name: photos
#
#  id               :integer          not null, primary key
#  title            :string(255)
#  pic_for_all_id   :integer
#  pic_for_all_type :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Photo < ActiveRecord::Base
  attr_accessible :title
  belongs_to :pic_for_all, polymorphic: true
end
