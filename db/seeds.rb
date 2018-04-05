require 'random_data'

Post.destroy_all
Comment.destroy_all
# Create Posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

50.times do
  Question.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_question,
    resolved: false
  )
end
questions = Question.all


puts "#{Post.count}."
Post.find_or_create_by!(title: "Title", body: "Body for my post")
puts "#{Post.count}."

p = Post.last

puts "#{Comment.count}."
Comment.find_or_create_by!(post: p, body: "My comment")
puts "#{Comment.count}."

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} questions created"
