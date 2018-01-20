class HashtagsController < ApplicationController
  
  before_action :authenticate_user!
  
def index
  @hashtags = current_user.hashtags
end

def new 
  @hashtag = Hashtag.new
end

def create
  @hashtag = Hashtag.new(hashtag_params)
  @hashtag.user = current_user
  if @hashtag.save
    redirect_to tweets_path(@tweets, id: @hashtag.id)
  else
    render new
  end
  
end

private

def hashtag_params
  params.require(:hashtag).permit(:htname)
end

end