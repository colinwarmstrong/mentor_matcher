require 'rails_helper'

describe "Registered user visits '/categories/:id'" do
  it 'clicking delete successfully deletes a category' do
    user = User.create(
      username: 'test',
      password: '54321',
      name: 'Colin',
      email: 'colin@email.com',
      city: 'Denver',
      role: 1)

    category = Category.create(title: 'Outdoors', description: 'Fresh air')

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit category_path(category)

    click_on 'Delete'

    expect(current_path).to eq(categories_path)
    expect(page).to_not have_content(category.title)
  end
end
