class TweetsController < ApplicationController
  def index
    @hashtag_id = params[:id]
    @hashtag = Hashtag.find(@hashtag_id).htname
    @htname = @hashtag.prepend("#")
    @hashtag_posts = InstagramApi.tag(@hashtag).recent_media({count:10}).data
  end
end