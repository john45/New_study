# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  first_name    :string(255)
#  last_name     :string(255)
#  username      :string(255)
#  password_hash :string(255)
#  email         :string(255)
#  birthday      :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  password_salt :string(255)
#

class User < ActiveRecord::Base
  before_save :encrypt_password

  attr_accessor :password
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :posts_count

  validates :email, uniqueness: true
  validates :password, confirmation: true
  # validates :password, length: { minimum: 8 }
  validates :email, presence: true

  has_many :images, as: :share_image
  has_many :posts, dependent: :destroy

  scope :old, -> { where('birthday <= ?', 18.years.ago) }

  def full_name
    return nil if !first_name or !last_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
  private

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def self.authenticate(email, password)
    user = find_by_email(email)

    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    end
  end

end
