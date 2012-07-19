class PlayersRounds < ActiveRecord::Migration
  def change
    create_table :players_rounds, :id => false do |t|
      t.references :player
      t.references :round
    end 
  end
end
