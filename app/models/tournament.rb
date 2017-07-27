class Tournament < ApplicationRecord
    has_many :scores
    has_many :golfers
end
