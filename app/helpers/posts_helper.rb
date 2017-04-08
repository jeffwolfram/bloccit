module PostsHelper
  def user_is_authorized_for_post?(post)
    current_user && (current_user == post.user || current_user.admin?)
  end
  def moder
    current_user && current_user.moderator?
  end
  def if_there_are_no_posts?
    @user.posts.count < 1
  end
end
