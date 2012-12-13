class AddAuthTokenToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :authentication_token, :string
    Player.find_each do |player| 
      player.reset_authentication_token!
      player.save
    end

    change_column :players, :authentication_token, :string, :null => false, :default => ""
  end
end
