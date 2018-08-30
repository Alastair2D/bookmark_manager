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
end