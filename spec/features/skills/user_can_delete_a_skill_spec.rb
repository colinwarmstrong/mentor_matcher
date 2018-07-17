require 'rails_helper'

describe "User visits '/skills/:id'" do
  it 'can successfully delete a skill' do
    category = Category.create(title: 'Music')
    skill = category.skills.create(title: 'Piano', description: 'Keys', category_id: category.id)

    visit skill_path(skill)

    click_on 'Delete'

  end
end
