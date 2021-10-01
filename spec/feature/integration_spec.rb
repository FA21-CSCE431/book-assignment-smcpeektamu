# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
  
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'The Catcher in the Rye'
	fill_in 'Author' with: 'JD Salinger'
	fill_in 'Price' with: '7.43'
	fill_in 'Publication Date' with '1951-7-16'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('The Catcher in the Rye')
  end
end