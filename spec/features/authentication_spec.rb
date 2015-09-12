require 'spec_helper'

describe 'Authentication', type: :feature do
  let(:new_player) { FactoryGirl.create(:player_new) }
  let(:player) { FactoryGirl.create(:player) }

  it 'should log in a player' do

    visit new_player_session_path
    fill_in 'player_email', with: player.email
    fill_in 'player_password', with: player.password
    click_on 'Sign in'

    page.should have_content 'Log out'
  end

  it 'should require a player change their password to confirm their account' do
    # exposing protected parameter from Devise
    new_player.define_singleton_method(:raw_confirmation_token) do
      @raw_confirmation_token
    end

    visit player_confirmation_path(confirmation_token: new_player.raw_confirmation_token)
    fill_in 'player_password', with: 'password'
    fill_in 'player_password_confirmation', with: 'password'
    click_on I18n.t('devise.confirmations.activate_buttom')

    new_player.reload
    expect(new_player.confirmed_at).to_not be_blank
  end

  it 'should log out a player' do
    visit new_player_session_path
    fill_in 'player_email', with: player.email
    fill_in 'player_password', with: player.password
    click_on 'Sign in'

    page.should have_content 'Log out'
    click_on 'Log out'

    page.should have_content 'Log in'
  end
end
