module UsersHelper
  def given_user(user)
   if current_user != post.user || current_user != comment.user
     flash[:notice] = "{user.name} has not submitted any posts yet."
   end
 end
end
