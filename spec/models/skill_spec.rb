require 'rails_helper'

describe Skill, type: :model do
  describe 'Validations' do
    it {should validate_presence_of :title}
  end

  describe 'Relationships' do
    it {should belong_to :category}
    it {should have_many :user_skills}
    it {should have_many(:users).through(:user_skills)}
  end
end
