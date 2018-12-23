class PagesController < ApplicationController

  def index
    @posts = Post.feed_posts
  end

end
