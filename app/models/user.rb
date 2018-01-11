class User < ActiveRecord::Base
has_many :hashtags
has_many :tweets, through: :hashtags
end