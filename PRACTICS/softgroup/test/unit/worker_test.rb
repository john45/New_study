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

require 'test_helper'

class WorkerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
