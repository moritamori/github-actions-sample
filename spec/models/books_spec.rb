require 'rails_helper'

describe Book do
  let(:book) { FactoryBot.create(:book, name: '良さげな本') }

  describe '#name' do
    it { expect(book.name).to eq '良さげな本' }
  end
end
