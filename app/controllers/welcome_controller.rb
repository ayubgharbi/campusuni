class WelcomeController < ApplicationController
skip_before_action :authorize

  def index
  	@posts = Post.last(8)
  end
end
