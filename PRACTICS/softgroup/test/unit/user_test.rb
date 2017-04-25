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
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
