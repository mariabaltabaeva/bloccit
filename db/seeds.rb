require 'random_data'

Post.destroy_all
Comment.destroy_all
Topic.destroy_all

5.times do
  User.create!(
    name: RandomData.random_name,
    email: RandomData.random_email,
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

50.times do
  Post.create!(
    user: users.sample,
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all


100.times do
  Comment.create!(
    user: users.sample,
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

#puts "#{Post.count}."
#Post.find_or_create_by!(title: "Title", body: "Body for my post")
#puts "#{Post.count}."

#p = Post.last

#puts "#{Comment.count}."
#Comment.find_or_create_by!(post: p, body: "My comment")
#puts "#{Comment.count}."


admin = User.create!(
   name:     'Admin User',
   email:    'admin@example.com',
   password: 'helloworld',
   role:     'admin'
 )

 member = User.create!(
   name:     'Member User',
   email:    'member@example.com',
   password: 'helloworld'
 )

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
