class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts[0].title = "spam"
    @posts.each do |post|
      if post.id % 5 == 0
        post.title = "Spam"
      end
    end
  end

  def show
  end

  def new
  end

  def edit
  end
end
