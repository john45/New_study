# frozen_string_literal: true

# == Schema Information
#
# Table name: posts
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  body         :text
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
