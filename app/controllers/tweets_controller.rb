class TweetsController < ApplicationController
  def index
    @hashtag_id = params[:id]
    @hashtag = Hashtag.find(@hashtag_id)
    @htname = @hashtag.htname.prepend("#")
    
    
  end
end