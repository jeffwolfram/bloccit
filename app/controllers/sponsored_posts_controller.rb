class SponsoredPostsController < ApplicationController
  def show
    @sponsored_posts = Sponsored_posts.find[:id]
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @sponsored_post = Sponsored_posts.new
  end

  def edit
    @sponsored_post = Sponsored_posts.find(params[:id])
  end
end
