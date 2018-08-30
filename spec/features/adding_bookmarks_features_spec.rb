feature 'Bookmark Manager' do

  scenario 'adds a bookmark to DB bookmark_manager\'s bookmark table' do
    clear_test_database
    add_bookmark_to_test_database
    visit '/bookmarks'
    expect(page).to have_content 'makers'
  end

end
