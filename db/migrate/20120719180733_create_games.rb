class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :players
      t.references :rounds

      t.timestamps
    end
    add_index :games, :players_id
    add_index :games, :rounds_id
  end
end
