# frozen_string_literal: true

# == Schema Information
#
# Table name: workers
#
#  id         :integer          not null, primary key
#  manager_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string(255)
#

class Worker < ActiveRecord::Base
  attr_accessible :name
  has_many :podchinennies, class_name: 'Worker',
                           foreign_key: 'manager_id'
  belongs_to :manager, class_name: 'Worker'
end
