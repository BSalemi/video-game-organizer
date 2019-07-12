class Game < ActiveRecord::Base
    validates(:title, :presence => true)
    validates(:content_rating, :presence => true)
    validates(:system_id, :presence => true)
    validates(:company_id, :presence => true)
    has_many :user_games
    has_many :users, through: :user_games
    belongs_to :system
    belongs_to :company
end
