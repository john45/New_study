# frozen_string_literal: true

# == Schema Information
#
# Table name: goods
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Good < ActiveRecord::Base
  attr_accessible :title
  has_many :pictures, as: :pic_for_all
end
