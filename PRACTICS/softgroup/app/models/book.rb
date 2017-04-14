# == Schema Information
#
# Table name: books
#
#  id           :integer          not null, primary key
#  author       :string(255)
#  title        :string(255)
#  page_counter :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  year         :date
#  body         :text
#

class Book < ActiveRecord::Base
  attr_accessible :body, :pagecounter, :title
end
