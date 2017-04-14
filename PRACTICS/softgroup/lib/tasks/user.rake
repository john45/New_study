# frozen_string_literal: true

require 'csv'
namespace :user do
  desc 'import users from users.csv file'
  task import: :environment do
    CSV.foreach('users.csv') do |row|
      User.create(first_name: row[0],
                  last_name: row[1],
                  username: row[2],
                  password: row[3],
                  email: row[4],
                  birthday: row[5])
    end
  end

  desc 'export all users to users.csv file'
  task export: :environment do
    CSV.open('users.csv', 'wb') do |row|
      users = User.all
      users.each do |user|
        user_list = [user.first_name, user.last_name, user.username, user.password, user.email, user.birthday]
        row << user_list
      end
    end
  end
end

#  first_name :string(255)  row1
#  last_name  :string(255)  row2
#  username   :string(255)  row3
#  password   :string(255)  row4
#  email      :string(255)  row5
#  birthday   :datetime     row6
