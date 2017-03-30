require 'random_data'
# Create Users
5.times do
  User.create!(
# #3
  name:     RandomData.random_name,
  email:    RandomData.random_email,
  password: RandomData.random_sentence
  )
end
users = User.all
15.times do
  Topic.create!(
  name: RandomData.random_sentence,
  description: RandomData.random_paragraph
  )
end
topics = Topic.all
#creat posts
50.times do

  post = Post.create!(
  user: users.sample,
  topic: topics.sample,
  title: RandomData.random_sentence,
  body: RandomData.random_paragraph
  )
  post.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
  rand(1..5).times {post.votes.create!(value: [-1, 1].sample, user: users.sample) }
end
posts = Post.all

100.times do
  Comment.create!(
  user: users.sample,
  post: posts.sample,
  body: RandomData.random_paragraph
  )
end
#create an admin user
admin = User.create!(
name: 'Admin User',
email: 'admin@example.com',
password: 'helloworld',
role: 'admin'
)
#create member
member = User.create!(
name: 'member user',
email: 'member@example.com',
password: 'helloworld'
)
moderator = User.create!(
name: 'First Last',
email:'moderator@g.com',
password: 'helloworld',
role: 'moderator'
)

puts "Seed finished"
 puts "#{Topic.count} topics created"
 puts "#{User.count} users created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Vote.count} votes created"
