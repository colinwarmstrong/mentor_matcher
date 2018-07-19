class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates_presence_of :password, require: true
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :city
  validates_presence_of :role

  has_many :user_skills
  has_many :skills, through: :user_skills

  enum role: ['default', 'admin']

  has_secure_password

  def skills_to_learn
    skills.distinct.where(id: UserSkill.where(user_id: id, mentoring?: false).pluck(:skill_id))
  end

  def skills_to_mentor
    skills.distinct.where(id: UserSkill.where(user_id: id, mentoring?: true).pluck(:skill_id))
  end
end
