
feature "Testing user input" do
  scenario "names are displayed on screen" do
    visit('/')
    fill_in :name_player_one, with: 'test_player_one'
    fill_in :name_player_two, with: 'test_player_two'
    click_button 'Ready!'
    save_and_open_page
    expect(page).to have_content 'test_player_one' && 'test_player_two'

  end

end

#save_and_open_page