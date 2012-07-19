class NominationsPlayers < ActiveRecord::Migration
 def change
   create_table :nominations_players, :id => false do |t|
     t.references :nomination
     t.references :player
   end
   create_table :nominations_votes, :id => false do |t|
     t.references :nomination
     t.references :vote
   end
 end
end
