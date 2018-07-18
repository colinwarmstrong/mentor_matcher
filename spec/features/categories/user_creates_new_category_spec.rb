require 'rails_helper'

describe "User visits 'categories/new'" do
  it 'successfully fills in required fields' do
    title = 'Sports'
    description = "Athletic endeavors"

    visit new_category_path

    fill_in :category_title, with: title
    fill_in :category_description, with: description

    click_on 'Create Category'

    expect(current_path).to eq(category_path(Category.last))
    expect(page).to have_content(title)
    expect(page).to have_content(description)
  end

  it 'enters duplicate title' do
    category = Category.create(title: 'Outdoors', description: 'Fresh air')
    count = Category.count

    visit new_category_path

    fill_in :category_title, with: category.title
    fill_in :category_description, with: category.description

    click_on 'Create Category'

    expect(current_path).to eq(categories_path)
    expect(Category.count).to eq(count)
  end
end
