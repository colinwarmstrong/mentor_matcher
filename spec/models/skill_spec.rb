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

  describe 'Instance Methods' do
    it '#find_students' do
      category = Category.create(title: 'Sports')
      skill = Skill.create!(title: 'Baseball', category_id: category.id )
      user_1 = User.create!(
        username: 'test',
        password: '54321',
        name: 'Colin',
        email: 'colin@email.com',
        city: 'Denver')

      user_2 = User.create!(
        username: 'colin',
        password: '54321',
        name: 'Colin',
        email: 'colin@email.com',
        city: 'Denver')

      user_skill_1 = UserSkill.create!(skill_id: skill.id, user_id: user_1.id)
      user_skill_2 = UserSkill.create!(skill_id: skill.id, user_id: user_2.id, mentoring?: true)

      expect(skill.find_students).to eq([user_1])
    end

    it '#find_mentors' do
      category = Category.create(title: 'Sports')
      skill = Skill.create!(title: 'Baseball', category_id: category.id)
      user_1 = User.create!(
        username: 'test',
        password: '54321',
        name: 'Colin',
        email: 'colin@email.com',
        city: 'Denver')

      user_2 = User.create!(
        username: 'colin',
        password: '54321',
        name: 'Colin',
        email: 'colin@email.com',
        city: 'Denver')

      user_skill_1 = UserSkill.create!(skill_id: skill.id, user_id: user_1.id)
      user_skill_2 = UserSkill.create!(skill_id: skill.id, user_id: user_2.id, mentoring?: true)

      expect(skill.find_mentors).to eq([user_2])
    end
  end
end
