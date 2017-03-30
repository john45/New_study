# frozen_string_literal: true

# == Schema Information
#
# Table name: humen
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  age        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Human < ActiveRecord::Base
  attr_accessible :name, :age
end
