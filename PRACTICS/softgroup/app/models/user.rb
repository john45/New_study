# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  username   :string(255)
#  password   :string(255)
#  email      :string(255)
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :first_name, :last_name, :password, :username
  # validates :username, uniqueness: true
  # validates :email, uniqueness: true
  # validates :password, length: { minimum: 8 }
  # validates :username, :email, :password, presence: true

  has_many :images, as: :share_image

  scope :old, -> { where('birthday <= ?', 18.years.ago) }

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end
