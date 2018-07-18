require 'rails_helper'

describe "User visits '/skills/:id'" do
  it 'filling in the required fields successfully adds a skill' do
    user = User.create(
      username: 'test',
      password: '54321',
      name: 'Colin',
      email: 'colin@email.com',
      city: 'Denver')
    category = Category.create(title: 'Music')
    skill = user.skills.create(title: 'Piano', description: 'Keys', category_id: category.id)

    updated_skill_title = 'Saxaphone'
    updated_skill_description = 'Jazzy'

    visit edit_skill_path(skill)

    fill_in :skill_title, with: updated_skill_title
    fill_in :skill_description, with: updated_skill_description

    click_on 'Update Skill'

    expect(current_path).to eq(skill_path(skill))
    expect(page).to have_content(updated_skill_title)
    expect(page).to have_content(updated_skill_description)
  end
end
