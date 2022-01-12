feature "Viewing player hitpoints" do
  scenario "hitpoints are displayed" do
    visit('/')
    fill_in :name_player_one, with: 'test_player_one'
    fill_in :name_player_two, with: 'test_player_two'
    click_button 'Ready!'
    save_and_open_page
    expect(page).to have_content "test_player_one's Hitpoints:" && "test_player_two's Hitpoints:"
  end
end