class PostsController < ApplicationController

  def index
    @hello = '名言'
    render template: 'posts/index'
  end
end
