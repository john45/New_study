# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  author     :string(255)
#  year       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Book, :type => :model do
  describe '#search' do
    before do
      Book.destroy_all
    end

    let!(:book_1){ create(:book) }
    let!(:book_2){ create(:book) }
    let!(:book_3){ create(:book, name: 'Best Test' ) }

    it 'search should book by titlr' do
      expect(Book.search('Test')).to include(book_3)
    end

    let(:book_4){ create(:book, name: 'Hello world!' ) }
    it 'search not should book by titlr' do
      expect(Book.search('Test')).to_not include(book_4)
    end
    # сделать норм фейкеры и написать функцию сеарч
  end

  describe '.stubs' do
    context 'should return nil' do
      before do
        allow(Book).to receive(:search).with('Test')
      end

      it 'should return nil' do
        expect(Book.search('Test')).to be_nil
      end
    end
  end
end
