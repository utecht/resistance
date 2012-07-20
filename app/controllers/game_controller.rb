class GameController < ApplicationController
  def create
    puts params
    player_ids = params[:players]
    players = Player.find(player_ids)
    if players.count < 5 or players.count > 10 then
      raise 'Wrong number of players'
    end
    # Randomly assign spys
    spy_count = { 5 => 2, 6 => 2, 7 => 3, 8 => 3, 9 => 3, 10 => 4}
    while Player.where(:spy => true, :id => player_ids).count < spy_count[players.count] do
      # randomly assign spys
      p = players.sample
      p.spy = true
      p.save
    end

    # Create default rounds
    round_required = {  1 => {5=>2, 6=>2, 7=>2, 8=>3, 9=>3, 10=>3},
                        2 => {5=>3, 6=>3, 7=>3, 8=>4, 9=>4, 10=>4},
                        3 => {5=>4, 6=>4, 7=>3, 8=>4, 9=>4, 10=>4},
                        4 => {5=>3, 6=>3, 7=>4, 8=>5, 9=>5, 10=>5},
                        5 => {5=>3, 6=>4, 7=>4, 8=>5, 9=>5, 10=>5}}
    rounds = []
    5.times do |r|
      r += 1
      r = Round.new(:number => r, :required => round_required[r][players.count])
      r.save
      rounds << r
    end
    @game = Game.new(:players => players, :rounds => rounds)
      if @game.save
        redirect_to @game
      else
        raise 'Game creation error'      
      end
  end

  def show
    @game = Game.find(params[:format])
  end
end
