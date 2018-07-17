require 'rails_helper'

describe "User visits '/users/:id/skills'" do
  it 'sees all skills associated with that user' do
    user = User.create(
      username: 'test',
      password: '54321',
      name: 'Colin',
      email: 'colin@email.com',
      city: 'Denver',
      role: 0)
    category = Category.create(title: 'Music')
    skill_1 = user.skills.create(title: 'Piano', description: 'Keys', category_id: category.id)
    skill_2 = user.skills.create(title: 'Ruby', description: 'The language of champions', category_id: category.id)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit user_path(user)

    expect(page).to have_content(skill_1.title)
    expect(page).to have_content(skill_1.description)
    expect(page).to have_content(skill_2.title)
    expect(page).to have_content(skill_2.description)
  end
end
