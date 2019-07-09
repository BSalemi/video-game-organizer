class VideoGameSystem < ActiveRecord::Base
    has_many :video_games 
    belongs_to :company, :class_name => "VideoGameCompany"
end
