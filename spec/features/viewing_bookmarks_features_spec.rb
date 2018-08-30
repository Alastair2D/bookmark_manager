feature 'Bookmark Manager' do

    scenario 'shows a list of all saved bookmarks' do
      add_bookmark_to_test_database
      visit '/bookmarks'
      expect(page).to have_content 'makers'
    end
  
end
