class Company < ActiveRecord::Base
    has_many :games
    has_many :systems
end
