class User < ApplicationRecord
  has_many :games

  # graham.games.map{|game| game.score}.reduce{|sum, s| sum + s}

end
