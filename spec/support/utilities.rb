def sign_in(player)
  visit new_player_session_path
  fill_in 'player_email', :with => player.email
  fill_in 'player_password', :with => player.password
  click_on 'Sign in'
end
