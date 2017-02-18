require 'random_data'

#creat posts
50.times do

  Post.create!(
  title: RandomData.random_sentence,
  body: RandomData.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
  post: posts.sample,
  body: RandomData.random_paragraph
  )
end
Post.find_or_create_by!(title: 'Hello') do |post|
  post.body = 'This is just a bunch of random text'
end
puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
