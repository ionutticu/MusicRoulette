# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create(name: :admin)
Role.create(name: :user)
Role.create(name: :company_user)

User.delete_all

user1 = User.create!(email: 'admin@roulette.test',
                     password: 'admintest',
                     password_confirmation: 'admintest',
                     first_name: 'Admin',
                     last_name: 'Admin',
                     birth: '01-06-2019',
                     avatar: File.new("public/images/medium/admin.png"))
user1.remove_role(:user)
user1.add_role(:admin)
user2 = User.create!(email: 'user@roulette.test',
                     password: 'usertest',
                     password_confirmation: 'usertest',
                     first_name: 'User',
                     last_name: 'Roulette',
                     birth: '01-06-2019',
                     avatar: File.new("public/images/medium/user.png"))
user2.add_role(:user)
user3 = User.create!(email: 'vip@roulette.test',
                     password: 'viptest',
                     password_confirmation: 'viptest',
                     first_name: 'Vip',
                     last_name: 'Roulette',
                     birth: '01-06-2019',
                     avatar: File.new("public/images/medium/company_user.png"))
user3.remove_role(:user)
user3.add_role(:company_user)

video1 = Video.create!(videoid: 'dQw4w9WgXcQ',
                      addedby: 'admin',
                      number: 1)

video2 = Video.create!(videoid: 'd1YBv2mWll0',
                      addedby: 'admin',
                      number: 2)
