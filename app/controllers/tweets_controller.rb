class TweetsController < ApplicationController
  def index 
    @hashtag_id = params[:id]
    @hashtag = Hashtag.find(@hashtag_id).htname
    @hashtag_posts = InstagramApi.tag(@hashtag).recent_media({count:10}).data
    @htname = @hashtag.prepend("#")
 
    @hashtag_posts.each do |htp|
      if htp.location
        @tweet = Tweet.new(body: htp.caption.text, latitude: htp.location.latitude, longitude: htp.location.longitude)
        @tweet.save
      end
    end
    
    @insta_posts = Tweet.all
    
      @hash = Gmaps4rails.build_markers (@insta_posts) do |hashtag, marker|
          marker.lat hashtag.latitude
          marker.lng hashtag.longitude
          marker.infowindow hashtag.body
      end
      
    @insta_posts.delete_all
    
  end
  
  
end