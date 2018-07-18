require 'rails_helper'

describe "User visits '/user/:id/skills/new'" do
  it 'filling in the required fields successfully adds a skill' do
    user = User.create(
      username: 'test',
      password: '54321',
      name: 'Colin',
      email: 'colin@email.com',
      city: 'Denver')
    category = Category.create(title: 'Music')

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    new_skill_title = 'Piano'
    new_skill_description = 'White and black keys'

    visit new_skill_path

    select category.title, from: :skill_category_id
    fill_in :skill_title, with: new_skill_title
    fill_in :skill_description, with: new_skill_description

    click_on 'Create Skill'

    expect(current_path).to eq(skill_path(Skill.last))
    expect(page).to have_content(new_skill_title)
  end
end
