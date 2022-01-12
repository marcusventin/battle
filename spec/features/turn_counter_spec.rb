feature "Turn counter" do
  scenario "starts with player 1's turn" do
    sign_in_and_play
    expect(page).to have_content "test_player_one, it's your turn!"
  end

  scenario "switches to player 2's turn after player 1" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Continue'
    expect(page).to have_content "test_player_two, it's your turn!"
  end
end