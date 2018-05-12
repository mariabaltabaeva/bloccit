module PostsHelper
  def user_can_edit_post?(post)
    current_user && (current_user == post.user || current_user.admin? || current_user.moderator?)
  end

  def user_can_destroy_post?(post)
    current_user == post.user || current_user.admin?
  end
end
