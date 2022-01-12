feature "Viewing player hitpoints" do
  scenario "hitpoints are displayed" do
    visit('/')
    sign_in_and_play
    expect(page).to have_content "test_player_one's Hitpoints:" && "test_player_two's Hitpoints:"
  end
end