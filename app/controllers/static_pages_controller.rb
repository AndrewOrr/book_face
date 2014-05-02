class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help		# this is the controller for the help page
  end

  def profile    # this is the controller for the help page
  end

  def wall    # this is the controller for the help page
  end

  def login   # this is the controller for the help page
  end

  def news_feed    # this is the controller for the help page
  end
  
  #Other pages we will need are
  # Profile
  # Profile Preferences
  # Friends 
  # Books (If we end up getting that far.)
  # Login
  # News feed.
  # Not all of these pages will be static however.

end
