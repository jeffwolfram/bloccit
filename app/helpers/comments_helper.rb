module CommentsHelper
  def user_is_authorized_for_comment?(comment)
    current_user && (current_user == comment.user || current_user.admin?)
  end
  def if_there_are_no_comments?
    @user.comments.count < 1
  end
end
