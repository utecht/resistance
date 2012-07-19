class Game < ActiveRecord::Base
  has_many :games_players
  has_many :players, :through => :games_players
  has_many :games_rounds
  has_many :rounds, :through => :games_rounds
  attr_accessible :players, :rounds
  # attr_accessible :title, :body
end

class GamesRound < ActiveRecord::Base
  belongs_to :player
  belongs_to :round
end

class GamesPlayer < ActiveRecord::Base
  belongs_to :game
  belongs_to :player
end
