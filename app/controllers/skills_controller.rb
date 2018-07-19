class SkillsController < ApplicationController
  before_action :require_admin, only: [:edit, :update, :destroy]

  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
    @students = @skill.find_students
    @mentors = @skill.find_mentors
  end

  def new
    if params[:user_id]
      @user_id = params[:user_id]
      @user_skill = UserSkill.new
    else
      @skill = Skill.new
    end
  end

  def create
    if params[:commit] == 'Add New Skill'
      skill_id = params[:user_skill][:skill_id]
      user = User.find(params[:user_id])
      UserSkill.create(user_id: user.id, skill_id: skill_id)
      redirect_to user_path(user)
    else
      skill = Skill.create(skill_params)
      redirect_to skill_path(skill)
    end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    skill = Skill.find(params[:id])
    skill.update(skill_params)
    redirect_to skill_path(skill)
  end

  def destroy
    skill = Skill.find(params[:id])
    skill.destroy
    redirect_to skills_path
  end

  private

  def skill_params
    params.require(:skill).permit(:title, :description, :category_id)
  end
end
