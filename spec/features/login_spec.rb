require 'rails_helper'

describe 'Login workflow' do
  it 'allows registered user to login successfully' do
    user = User.create(
      username: 'test',
      password: '54321',
      name: 'Colin',
      email: 'colin@email.com',
      city: 'Denver',
      role: 0)

    visit root_path

    click_on 'I already have an account'

    expect(current_path).to eq(login_path)

    fill_in :username, with: user.username
    fill_in :password, with: user.password

    click_on 'Login'

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content('Logout')
    expect(page).to_not have_content('I already have an account')
  end
end
