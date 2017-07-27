class Golfer < ApplicationRecord
has_many :scores, through: :tournaments
end
