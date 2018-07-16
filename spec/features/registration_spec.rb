require 'rails_helper'

describe 'Registration workflow' do
  it 'submits registration form successfully' do
    username = 'test'
    name = 'Colin'

    visit root_path

    click_on 'Sign Up to be a New User'

    expect(current_path).to eq(new_user_path)

    fill_in :user_username, with: username
    fill_in :user_password, with: '12345'
    fill_in :user_name, with: name
    fill_in :user_email, with: 'colin@email.com'
    fill_in :user_city, with: 'Denver'
    fill_in :user_role, with: 1

    click_on 'Create User'

    expect(current_path).to eq(user_path(User.last))
    expect(page).to have_content("Welcome, #{name}")
  end

  it 'submits registration form with duplicate username' do
    username = 'test'
    User.create(
      username: username,
      password: '54321',
      name: 'Colin',
      email: 'colin@email.com',
      city: 'Denver',
      role: 0)
    count = User.count

    visit root_path

    click_on 'Sign Up to be a New User'

    expect(current_path).to eq(new_user_path)

    fill_in :user_username, with: username
    fill_in :user_password, with: '12345'
    fill_in :user_name, with: 'Jill'
    fill_in :user_email, with: 'jill@email.com'
    fill_in :user_city, with: 'Chicago'
    fill_in :user_role, with: 0

    click_on 'Create User'

    expect(User.count).to eq(count)
    expect(current_path).to eq(users_path)
  end
end
