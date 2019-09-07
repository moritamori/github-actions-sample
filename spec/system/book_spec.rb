require 'rails_helper'

feature '書籍一覧の表示', type: :system do
  before do
    FactoryBot.create(:book, name: '良さげな本')
  end

  scenario '書籍一覧画面にアクセス', js: true do
    visit books_path

    expect(page).to have_content '良さげな本'
  end
end
