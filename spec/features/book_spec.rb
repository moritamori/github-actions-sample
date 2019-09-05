require 'rails_helper'

feature '書籍一覧の表示' do
  before do
    FactoryBot.create(:book, name: '良さげな本')
  end

  scenario '書籍一覧画面にアクセス' do
    visit books_path

    expect(page).to have_content '良さげな本'
  end
end
