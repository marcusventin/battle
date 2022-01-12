feature "Attack player" do
  scenario "attack button exists" do
  end

  scenario "attack button returns confirmation" do
    sign_in_and_play
    click_button 'Attack'
    save_and_open_page
    expect(page).to have_content "You attacked Player Two"
  end

end