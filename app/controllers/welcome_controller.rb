class WelcomeController < ApplicationController
skip_before_action :authorize
  def index
  	@posts = Post.last(4)
  	@deusts = Deust.all.order("created_at DESC")
  end

end
