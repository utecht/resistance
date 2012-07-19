class Nomination < ActiveRecord::Base
  attr_accessible :leader, :nominees, :votes, :round
  belongs_to :leader, :class_name => 'Player'
  has_many :nominations_players
  has_many :nominees, :class_name => 'Player', :through => :nominations_players, :source => :player
  has_many :nominations_votes
  has_many :votes, :through => :nominations_votes
  belongs_to :round
end

class NominationsPlayer < ActiveRecord::Base
  belongs_to :player
  belongs_to :nomination
end

class NominationsVote < ActiveRecord::Base
  belongs_to :vote
  belongs_to :nomination
end
