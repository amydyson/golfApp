class Score < ApplicationRecord
  belongs_to :golfer
  belongs_to :tournament
end

def front_nine (score)

@front_nine = score.h1 + score.h2 + score.h3 + score.h4 + score.h5 + score.h6 + score.h7 + score.h8 + score.h9

end

def sort_by_adviser(data, name)
  data = data.sort{|x,y|x[:adviser] <=> y[:adviser]}
  i = data.index{|h|h[:adviser] = name}
  h = data.delete_at i
  data.unshift h
end
