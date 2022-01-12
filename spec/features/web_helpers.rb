
def sign_in_and_play
  visit('/')
  fill_in :name_player_one, with: 'test_player_one'
  fill_in :name_player_two, with: 'test_player_two'
  click_button 'Ready!'
end