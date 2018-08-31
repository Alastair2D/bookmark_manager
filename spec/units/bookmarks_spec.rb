require 'bookmarks'

describe Bookmarks do
  let(:bookmarks) { described_class }

  before(:each) do
    clear_test_database
  end

  describe '#fetch_bookmarks' do
    it 'shows a list of all saved bookmarks' do
      expect(bookmarks.fetch_bookmarks).not_to include 'website'
    end
  end

  describe '#create' do
    it 'adds new url to database table' do
    add_bookmark_to_test_database
    expect(bookmarks.fetch_bookmarks).to include 'http://www.makers.com'
    end
  end

  describe '#create' do
    it 'adds new url to database table' do
    add_bookmark_to_test_database
    expect(bookmarks.fetch_bookmarks).not_to include 'makers'
    end
    it 'does not create a new bookmark if the url is invalid' do
      Bookmarks.create(url: 'shitty url')
      expect(Bookmarks.fetch_bookmarks).not_to include 'shitty url' 
    end
  end

end