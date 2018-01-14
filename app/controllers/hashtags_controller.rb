class HashtagsController < ApplicationController
  
  before_action :authenticate_user!
  
def index
  @hashtags = current_user.hashtags
end

def new 
  @hashtag = Hashtag.new
   $client.search("to:justinbieber marry me", result_type: "recent").take(3) 
end

def create
  @hashtag = Hashtag.new(article_params)
  @hashtag.user = current_user
  render 'new' if @hashtag.save
  
end

private

def article_params
  params.require(:hashtag).permit(:htname)
end

end