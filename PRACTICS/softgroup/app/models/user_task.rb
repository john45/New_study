# frozen_string_literal: true

# == Schema Information
#
# Table name: user_tasks
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  task_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserTask < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  belongs_to :task
end
