require 'rails_helper'

describe "User visits '/user/:id/skills/new'" do
  it 'filling in the required fields successfully adds a skill' do
    user = User.create(
      username: 'test',
      password: '54321',
      name: 'Colin',
      email: 'colin@email.com',
      city: 'Denver',
      role: 0)
    category = Category.create(title: 'Music')

    new_skill_title = 'Piano'
    new_skill_description = 'White and black keys'

    visit new_user_skill_path(user)

    select category.title, from: :skill_category_id
    fill_in :skill_title, with: new_skill_title
    fill_in :skill_description, with: new_skill_description

    click_on 'Add Skill'

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content(new_skill_title)
  end
end
