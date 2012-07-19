class Vote < ActiveRecord::Base
  belongs_to :player
  attr_accessible :player, :vote
end
