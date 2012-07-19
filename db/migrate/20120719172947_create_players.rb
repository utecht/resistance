class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name, :null => false
      t.boolean :spy, :null => false

      t.timestamps
    end
  end
end
