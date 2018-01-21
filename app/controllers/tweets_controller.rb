class TweetsController < ApplicationController
  def index
    @hashtag_id = params[:id]
    @hashtag = Hashtag.find(@hashtag_id).htname
    @hashtag_posts = InstagramApi.tag(@hashtag).recent_media({count:10}).data
    @htname = @hashtag.prepend("#")
    
  end
end