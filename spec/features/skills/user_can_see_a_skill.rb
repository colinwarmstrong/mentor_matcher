require 'rails_helper'

describe "User visits '/skills/:id'" do
  it 'sees information about skill' do
    category = Category.create(title: 'Music')
    skill = category.skills.create(title: 'Piano', description: 'Keys', category_id: category.id)

    visit skill_path(skill)

    expect(page).to have_content(skill.title)
    expect(page).to have_content(skill.description)
  end
end
