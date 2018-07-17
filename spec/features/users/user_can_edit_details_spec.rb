require 'rails_helper'

describe "User visits 'users/1/edit'" do
  before(:each) do
    @user = User.create(
      username: 'test',
      password: '54321',
      name: 'Colin',
      email: 'colin@email.com',
      city: 'Denver',
      role: 0)

    visit login_path

    fill_in :username, with: @user.username
    fill_in :password, with: @user.password

    click_on 'Login'
  end

  # it 'submitting valid information successfully update user information' do
  #   updated_name = 'Jill'
  #   updated_email = 'jill@email.com'
  #   updated_city = 'Chicago'
  #
  #   visit edit_user_path(@user)
  #   save_and_open_page
  #
  #   fill_in :user_name, with: updated_name
  #   fill_in :user_email, with: updated_email
  #   fill_in :user_city, with: updated_city
  #
  #   click_on 'Update User'
  #
  #   expect(current_path).to eq(user_path(@user))
  #   expect(page).to have_content(updated_name)
  # end
end
