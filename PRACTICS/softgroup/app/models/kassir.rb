# frozen_string_literal: true

# == Schema Information
#
# Table name: kassirs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Kassir < ActiveRecord::Base
  attr_accessible :name
  has_many :photos, as: :pic_for_all
end
