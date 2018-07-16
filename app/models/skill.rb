class Skill < ApplicationRecord
  validates_presence_of :title

  belongs_to :category
  has_many :user_skills
  has_many :users, through: :user_skills
end
