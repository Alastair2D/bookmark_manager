feature 'Bookmark Manager' do

  scenario 'adds a bookmark to DB bookmark_manager\'s bookmark table using web helper' do
    clear_test_database
    add_bookmark_to_test_database
    visit '/bookmarks'
    expect(page).to have_content 'makers'
  end

  scenario 'adds a bookmark' do 
    visit '/bookmarks'
    click_button 'Add'
    fill_in 'url', with: 'http://www.url.com'
    click_button 'Submit'
    expect(page).to have_content 'http://www.url.com'
  end

end
