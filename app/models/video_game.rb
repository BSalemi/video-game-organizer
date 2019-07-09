class VideoGame < ActiveRecord::Base
    has_many :user_video_games
    has_many :users, through: :user_video_games
    belongs_to :system, :class_name => "VideoGameSystem"
    belongs_to :company, :class_name => "VideoGameCompany" 
end
