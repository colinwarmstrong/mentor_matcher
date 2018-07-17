require 'rails_helper'

describe "Registered user visits '/categories/:id'" do
  it 'clicking delete successfully deletes a category' do
    category = Category.create(title: 'Outdoors', description: 'Fresh air')


    visit category_path(category)

    click_on 'Delete'

    expect(current_path).to eq(categories_path)
    expect(page).to_not have_content(category.title)
  end
end
