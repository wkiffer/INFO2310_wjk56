class StaticPagesController < ApplicationController
  def home
	@micro_post = MicroPost.new
    if signed_in?
		@feed = current_user.feed(page: params[:page], per_page: 10)
	end
  end

  def help
  end
  
  def about
  end
end
