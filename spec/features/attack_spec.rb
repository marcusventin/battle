feature "Attack player" do
  scenario "attack button exists" do
  end

  scenario "attack button returns confirmation" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "test_player_one attacked test_player_two"
  end

  scenario "attack reduces HP by 10" do
    sign_in_and_play
    expect {click_button 'Attack' }.to change {$player_2.hp }.by(-10)
  end
end