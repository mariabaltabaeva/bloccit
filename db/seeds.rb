require 'random_data'

Post.destroy_all
Comment.destroy_all
Topic.destroy_all

15.times do
  Topic.create!(
    name: RandomData.random_sentence,
    description: RandomData.random_paragraph
  )
end
topics = Topic.all

50.times do
  Post.create!(
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

50.times do
  SponsoredPost.create!(
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: RandomData.random_number
  )
end
sponsored_posts = SponsoredPost.all

100.times do
  Comment.create!(
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

puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{SponsoredPost.count} sponsored posts created"
