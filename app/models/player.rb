class Player < ActiveRecord::Base
  attr_accessible :name, :spy, :session
  validates :name, {:uniqueness => true, :presence => true}
  validates :session, :uniqueness => true
end
