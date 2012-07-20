class UniqueSessionPlayer < ActiveRecord::Migration
  def change
    change_column(:players, :session, :string, :null => false)
 end
end
