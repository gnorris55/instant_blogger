class BlogsController < ApplicationController
  def home
    @blogs = Blog.all
  end
end
