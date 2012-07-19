class CreateNominations < ActiveRecord::Migration
  def change
    create_table :nominations do |t|
      t.references :leader
      t.references :nominees
      t.references :round
      t.references :votes

      t.timestamps
    end
  end
end
