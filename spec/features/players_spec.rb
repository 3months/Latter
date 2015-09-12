require 'spec_helper'

describe "Players", type: :feature do
  let!(:players) {FactoryGirl.create_list(:player, 2)}

  it "should all be shown on the players page before and after logging in" do
    visit players_path

    Player.all.each do |item|
      page.should have_selector("h3", :text => item.name )
    end

    sign_in(players.first)

    Player.all.each do |item|
      page.should have_selector("h3", :text => item.name )
    end

  end

end


