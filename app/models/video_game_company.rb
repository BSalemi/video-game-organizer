class VideoGameCompany < ActiveRecord::Base
    has_many :video_games
    has_many :systems, :class_name => "VideoGameSystem"
end
