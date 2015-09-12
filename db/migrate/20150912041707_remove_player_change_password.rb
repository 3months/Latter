class RemovePlayerChangePassword < ActiveRecord::Migration
  def change
    remove_column :players, :changed_password
  end
end
