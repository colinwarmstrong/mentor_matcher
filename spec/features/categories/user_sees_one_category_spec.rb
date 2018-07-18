require 'rails_helper'

describe "User visits '/categories/:id'" do
  it 'sees title and description' do
    category = Category.create(title: 'Outdoors', description: 'Fresh air')

    visit category_path(category)

    expect(page).to have_content(category.title)
    expect(page).to have_content(category.description)
  end
end
