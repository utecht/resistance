class GamePlayers < ActiveRecord::Migration
  def change
   create_table :games_players, :id => false do |t|
     t.references :game
     t.references :player
   end 
   create_table :games_rounds, :id => false do |t|
     t.references :game
     t.references :round
   end
  end
end
