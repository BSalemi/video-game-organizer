class User < ActiveRecord::Base
    validates(:username, :presence => true, :uniqueness => true)
    validates(:email, :presence => true, :uniqueness => true)
    validates(:password, :presence => true)
    has_secure_password
    has_many :user_games
    has_many :games, through: :user_games
end
