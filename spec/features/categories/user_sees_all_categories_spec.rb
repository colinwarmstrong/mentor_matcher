require 'rails_helper'

describe "User visits '/categories'" do
  it 'sees all category titles' do
    category_1 = Category.create(title: 'Outdoors', description: 'Fresh air')
    category_2 = Category.create(title: 'Outdoors', description: 'Fresh air')

    visit categories_path

    expect(page).to have_content(category_1.title)
    expect(page).to have_content(category_2.title)
  end
end
