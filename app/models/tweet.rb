class Tweet < ActiveRecord::Base
has_many :hashtags
has_many :users, through: :hashtags
end