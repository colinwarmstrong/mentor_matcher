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
end
