class FavoriteMailer < ApplicationMailer
  default from: "info@gmail.com"

  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@afternoon-atoll-44085.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@afternoon-atoll-44085.com>"
    headers["References"] = "<post/#{post.id}@afternoon-atoll-44085.com>"

    @user = user
    @post = post
    @comment = comment

     mail(to: user.email, subject: "New comment on #{post.title}")

  end
  def new_post(user, post)
    headers["Message_ID"] = "<post/#{post.id}@afternoon-atoll-44085.com>"
    headers["In-Reply-To"] = "post/#{post.id}@afternoon-atoll-44085.com>"
    headers["References"] = "post/#{post.id}@afternoon-atoll-44085.com>"

    @user = user
    @post = post

    mail(to: user.email, subject: "You are now following #{post.title} that you created.")
  end
end
