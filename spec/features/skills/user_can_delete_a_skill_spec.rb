require 'rails_helper'

describe "User visits '/skills/:id'" do
  it 'can successfully delete a skill' do
    user = User.create(
      username: 'test',
      password: '54321',
      name: 'Colin',
      email: 'colin@email.com',
      city: 'Denver',
      role: 1)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    category = Category.create(title: 'Music')
    skill = category.skills.create(title: 'Piano', description: 'Keys', category_id: category.id)

    visit skill_path(skill)

    click_on 'Delete'
  end
end
