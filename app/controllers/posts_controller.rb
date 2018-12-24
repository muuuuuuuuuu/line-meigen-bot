class PostsController < ApplicationController

  def index
    render template: 'posts/index'
  end
end
