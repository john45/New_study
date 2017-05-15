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

require 'rails_helper'

RSpec.describe User, :type => :model do
  describe 'scopes' do
    let!(:user_1) { create(:user, active: true) }
    let!(:user_2) { create(:user, active: true) }
    let!(:user_3) { create(:user) }

    it '#should return only active' do
      expect(User.active).to match_array(user_1, user_2)
    end
  end
end
