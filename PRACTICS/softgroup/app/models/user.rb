# frozen_string_literal: true
# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  first_name    :string(255)
#  last_name     :string(255)
#  username      :string(255)
#  password      :string(255)
#  email         :string(255)
#  birthday      :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  password_salt :string(255)
#  posts_count   :integer          default(0)
#  password_hash :string(255)
#  active        :boolean          default(FALSE)
#

class User < ActiveRecord::Base
  before_save :encrypt_password

  attr_accessor :password, :password_confirmation, :active
  attr_accessible :email,
                  :first_name,
                  :last_name,
                  :password,
                  :password_confirmation,
                  :posts_count,
                  :active

  validates :email, uniqueness: true
  validates :password, confirmation: true
  validates :email, presence: true

  has_many :images, as: :share_image
  has_many :posts, dependent: :destroy

  scope :old, -> { where('birthday <= ?', 18.years.ago) }
  scope :active, -> { where(active: true) }

  def full_name
    return nil if !first_name || !last_name
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
