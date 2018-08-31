feature 'Validate correct url' do 

  scenario 'user adds incorrectly formatted url' do
    visit '/bookmarks'
    click_button 'Add'
    fill_in 'url', with: 'shitty url'
    click_button 'Submit'
    expect(page).to have_content("Invalid URL format")
  end

end