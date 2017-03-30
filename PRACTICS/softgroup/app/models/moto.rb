# frozen_string_literal: true

# == Schema Information
#
# Table name: vehicles
#
#  id         :integer          not null, primary key
#  type       :string(255)
#  color      :string(255)
#  price      :decimal(10, 2)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Moto < Vehicle
  # attr_accessible :title, :body
end
