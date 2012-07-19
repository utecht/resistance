class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :player, :null => false
      t.boolean :vote, :null => false

      t.timestamps
    end
  end
end
