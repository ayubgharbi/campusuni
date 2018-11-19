class WelcomeController < ApplicationController
skip_before_action :authorize
  def index
  	@posts = Post.all.order("created_at DESC").paginate(page: params[:page], per_page: 7)
  	@deusts = Deust.all.order("created_at DESC")
  end

end
