class TweetsController < ApplicationController
  def index 
    @hashtag_id = params[:id]
    @hashtag = Hashtag.find(@hashtag_id).htname
    @hashtag_posts = InstagramApi.tag(@hashtag).recent_media({count:10}).data
    @htname = @hashtag.prepend("#")
    
    @hashtag_posts.each do |htp|
      @hash = Gmaps4rails.build_markers (htp) do |hashtag, marker|
        if hashtag.location
          marker.lat hashtag.location.latitude
          marker.lng hashtag.location.longitude
          marker.infowindow hashtag.caption.text
        end
      end
    end
  end
end