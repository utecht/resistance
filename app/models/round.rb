class Round < ActiveRecord::Base
  has_many :players_rounds
  has_many :players, :through => :players_rounds
  attr_accessible :number, :pass, :required, :players
end

class PlayersRound < ActiveRecord::Base
  belongs_to :player
  belongs_to :round
end
