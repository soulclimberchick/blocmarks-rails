# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Create a primary user
test1 = User.create!(
  username: 'test1',
  email: 'test1@example.com',
  password: 'password',
  confirmed_at: Time.now
)

#  Create users
6.times do
  User.create!(
    :username => Faker::Name.first_name,
    :email => Faker::Internet.email,
    :password => Faker::Internet.password,
    :confirmed_at => Time.now
  )
end
users = User.all

# Create topics
5.times do
  Topic.create!(
    user: users.sample,
    title: Faker::Book.title
  )
end
topics = Topic.all

# Create bookmarks
20.times do
  Bookmark.create!(
    topic: topics.sample,
    url: Faker::Internet.url
  )
end
bookmarks = Bookmark.all


puts "Seeds finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Bookmark.count} bookmarks created"
