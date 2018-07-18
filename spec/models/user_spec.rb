require 'rails_helper'

describe User, type: :model do
  describe 'Validations' do
    it {should validate_presence_of :username}
    it {should validate_uniqueness_of :username}
    it {should validate_presence_of :name}
    it {should validate_presence_of :email}
    it {should validate_presence_of :city}
    it {should validate_presence_of :role}
    it {should have_secure_password}
  end

  describe 'Relationships' do
    it {should have_many :user_skills}
    it {should have_many(:skills).through(:user_skills)}
  end

  describe 'Roles' do
    it 'can be created as a defualt user' do
      user = User.create(
        username: 'test',
        password: '54321',
        name: 'Colin',
        email: 'colin@email.com',
        city: 'Denver')

      expect(user.role).to eq('default')
      expect(user.default?).to be_truthy
    end

    it 'can be created as an admin' do
      user = User.create(
        username: 'test',
        password: '54321',
        name: 'Colin',
        email: 'colin@email.com',
        city: 'Denver',
        role: 1)

      expect(user.role).to eq('admin')
      expect(user.admin?).to be_truthy
    end
  end
end
