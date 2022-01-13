
feature "Testing user input" do
  scenario "names are displayed on screen" do
    sign_in_and_play
    expect(page).to have_content 'test_player_one' && 'test_player_two'
  end

end
