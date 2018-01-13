class HashtagsController < ApplicationController
  
  before_action :authenticate_user!
  
def index
  @hashtags = current_user.hashtags
end

def new 
  @hashtag = Hashtag.new
end

def create
  @hashtag = Hashtag.new(article_params)
  @hashtag.user = current_user
  @hashtag.save
  render 'new'
end

private

def article_params
  params.require(:hashtag).permit(:htname)
end

end