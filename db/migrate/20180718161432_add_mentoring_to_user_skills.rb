class AddMentoringToUserSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :user_skills, :mentoring?, :boolean, default: false
  end
end
