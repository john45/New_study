# frozen_string_literal: true
# == Schema Information
#
# Table name: pictures
#
#  id                   :integer          not null, primary key
#  title                :string(255)
#  imageable_id         :integer
#  imageable_type       :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  picture_file_name    :string(255)
#  picture_content_type :string(255)
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#

class Picture < ActiveRecord::Base
  attr_accessible :title, :picture, :picture_attributes
  belongs_to :imageable, polymorphic: true

  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
  # validates_attachment_content_type :picture, :content_type => 'image/jpeg'
end
