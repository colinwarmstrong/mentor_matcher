class SkillsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @skills = @user.skills
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    skill = Skill.create(skill_params)
    redirect_to skill_path(skill)
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
  end

  private

  def skill_params
    params.require(:skill).permit(:title, :description, :category_id)
  end
end
