class Skill < ApplicationRecord
  validates_presence_of :title

  belongs_to :category
  has_many :user_skills, dependent: :destroy
  has_many :users, through: :user_skills

  def find_students
    users.distinct.where(id: UserSkill.where(skill_id: id, mentoring?: false).pluck(:user_id))
  end

  def find_mentors
    users.distinct.where(id: UserSkill.where(skill_id: id, mentoring?: true).pluck(:user_id))
  end
end
