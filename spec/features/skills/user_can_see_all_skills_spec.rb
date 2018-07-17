require 'rails_helper'

describe "User visits '/skills'" do
  it 'sees all skills' do
    category = Category.create(title: 'Music')
    skill_1 = category.skills.create(title: 'Piano', description: 'Keys', category_id: category.id)
    skill_2 = category.skills.create(title: 'Piano', description: 'Keys', category_id: category.id)

    visit skills_path

    expect(page).to have_content(skill_1.title)
    expect(page).to have_content(skill_1.description)
    expect(page).to have_content(skill_2.title)
    expect(page).to have_content(skill_2.description)
  end
end
