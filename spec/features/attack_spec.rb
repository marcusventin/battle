feature "Attack player" do
  scenario "attack button exists" do
  end

  scenario "attack button returns confirmation" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "test_player_one attacked test_player_two"
  end

end