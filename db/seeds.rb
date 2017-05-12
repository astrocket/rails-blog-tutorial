# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(:email => 'admin@gmail.com', :password => 'gksruf')
user.add_role(:admin)
user.save

100.times do
   Post.create(:title => Faker::HarryPotter.character, :content => Faker::Lorem.characters) 
end