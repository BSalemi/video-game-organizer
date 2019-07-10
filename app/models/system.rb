class System < ActiveRecord::Base
    has_many :games 
    belongs_to :company
end
