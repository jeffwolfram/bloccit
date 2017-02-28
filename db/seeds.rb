require 'random_data'

#creat posts
50.times do

  Post.create!(
  title: RandomData.random_sentence,
  body: RandomData.random_paragraph
  )
end

50.times do
  Question.create!(
  title: RandomData.random_sentence,
  body: RandomData.random_paragraph
  )
end

posts = Post.all
questions = Question.all

100.times do
  Comment.create!(
  post: posts.sample,
  body: RandomData.random_paragraph
  )
end
100.times do
  Answer.create!(
  question: questions.sample,
  body: RandomData.random_paragraph
  )
end

Post.find_or_create_by!(title: 'Hola', body: 'This is just a bunch of random text')
puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Question.count} questions created"
puts "#{Comment.count} comments created"
