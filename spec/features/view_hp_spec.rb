feature "Viewing player hitpoints" do
  scenario "see player 1 HP" do
    sign_in_and_play
    expect(page).to have_content "test_player_one's Hitpoints:"
  end

  scenario "see player 2 HP" do
    sign_in_and_play
    expect(page).to have_content "test_player_two's Hitpoints:"
  end
  
end