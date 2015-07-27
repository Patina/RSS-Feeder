class FeedsController < ApplicationController

  def index
  	@feed = Feeds.all
  end
end
