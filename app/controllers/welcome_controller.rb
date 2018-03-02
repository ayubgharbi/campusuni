class WelcomeController < ApplicationController
skip_before_action :authorize

  def index
  	@posts = Post.last(6)
  end
end
