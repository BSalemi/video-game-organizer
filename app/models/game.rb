class Game < ActiveRecord::Base
    has_many :user_games
    has_many :users, through: :user_games
    belongs_to :system
    belongs_to :company
end
