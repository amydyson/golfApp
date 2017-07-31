class Score < ApplicationRecord
  belongs_to :golfer
  belongs_to :tournament
end

def front9

	Score.h1

end


