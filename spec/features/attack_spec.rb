feature "Attack player" do

  scenario "attack button returns confirmation" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "test_player_one attacked test_player_two"
  end

  scenario "attack reduces HP by 10" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "test_player_two has 90 HP"
    expect(page).not_to have_content "test_player_two has 100 HP"
  end
end