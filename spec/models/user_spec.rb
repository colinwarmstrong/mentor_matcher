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

  describe 'Instance Methods' do
    it '#skills_to_learn' do
      user = User.create(
        username: 'test',
        password: '54321',
        name: 'Colin',
        email: 'colin@email.com',
        city: 'Denver')

      category = Category.create!(title: 'Outdoors')

      skill_1 = Skill.create(title: 'Baking', category_id: category.id)
      skill_2 = Skill.create(title: 'Climbing', category_id: category.id)
      skill_3 = Skill.create(title: 'Hiking', category_id: category.id)
      skill_4 = Skill.create(title: 'Fishing', category_id: category.id)

      user_skill_1 = UserSkill.create(user_id: user.id, skill_id: skill_1.id)
      user_skill_2 = UserSkill.create(user_id: user.id, skill_id: skill_2.id)
      user_skill_3 = UserSkill.create(user_id: user.id, skill_id: skill_3.id, mentoring?: true)
      user_skill_4 = UserSkill.create(user_id: user.id, skill_id: skill_4.id, mentoring?: true)

      expect(user.skills_to_learn).to eq([skill_1, skill_2])
    end

    it '#skills_to_mentor' do
      user = User.create!(
        username: 'test',
        password: '54321',
        name: 'Colin',
        email: 'colin@email.com',
        city: 'Denver')

      category = Category.create!(title: 'Outdoors')

      skill_1 = Skill.create!(title: 'Baking', category_id: category.id)
      skill_2 = Skill.create!(title: 'Climbing', category_id: category.id)
      skill_3 = Skill.create!(title: 'Hiking', category_id: category.id)
      skill_4 = Skill.create!(title: 'Fishing', category_id: category.id)

      user_skill_1 = UserSkill.create!(user_id: user.id, skill_id: skill_1.id)
      user_skill_2 = UserSkill.create!(user_id: user.id, skill_id: skill_2.id)
      user_skill_3 = UserSkill.create!(user_id: user.id, skill_id: skill_3.id, mentoring?: true)
      user_skill_4 = UserSkill.create!(user_id: user.id, skill_id: skill_4.id, mentoring?: true)

      expect(user.skills_to_mentor).to eq([skill_3, skill_4])
    end
  end
end
