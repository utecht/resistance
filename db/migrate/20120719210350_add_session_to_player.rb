class AddSessionToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :session, :string
  end
end
