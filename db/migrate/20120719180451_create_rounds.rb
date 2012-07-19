class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :number
      t.boolean :pass
      t.integer :required
      t.references :players

      t.timestamps
    end
    add_index :rounds, :players_id
  end
end
