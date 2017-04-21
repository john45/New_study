# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# seed_for_user = { first_name: "john#{rand(99)}",
#                   last_name: "adam#{rand(99)}",
#                   username: "manga#{rand(99)}",
#                   password: '123456789',
#                   email: "john#{rand(99)}@mail.ru}",
#                   birthday: Time.now }
#  first_name :string(255)
#  last_name  :string(255)
#  username   :string(255)
#  password   :string(255)
#  email      :string(255)
#  birthday   :datetime

text = ' This file should contain all the record creation needed to seed the database with its default values.
 The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).'
user = User.first
50.times do |n|
  user.posts.create(title: "title-#{n}", body: text)
end
