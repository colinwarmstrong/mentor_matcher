require 'rails_helper'

describe "User visits '/categories/:id/edit'" do
  it 'successfully updates category when valid information is submitted' do
    category = Category.create(title: 'Outdoors', description: 'Fresh air')
    updated_title = 'Computers'
    updated_description = 'The lastest technology'

    visit edit_category_path(category)

    fill_in :category_title, with: updated_title
    fill_in :category_description, with: updated_description

    click_on 'Update Category'

    expect(current_path).to eq(category_path(category))
    expect(page).to have_content(updated_title)
    expect(page).to have_content(updated_description)
  end

  it 'submitting duplicate category names will fail' do
    category_1 = Category.create(title: 'Technology', description: 'The latest and greatest')
    category_2 = Category.create(title: 'Sports', description: 'For the love of the game')

    visit edit_category_path(category_1)

    fill_in :category_title, with: category_2.title

    click_on 'Update Category'

    expect(current_path).to eq(category_path(category_1))
    expect(current_path).to_not have_content(category_2.title)
  end
end
