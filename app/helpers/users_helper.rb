module UsersHelper
  def user_has_posts?(user)
   user.posts.any?
   end

   def user_has_comments?(user)
     user.comments.any?
   end
end
