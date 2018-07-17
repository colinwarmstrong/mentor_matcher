class SkillsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @skills = @user.skills
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @skill = Skill.new
  end

  def create
    @user = User.find(params[:user_id])
    @user.skills.create(skill_params)
    redirect_to user_path(@user)
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    skill = Skill.find(params[:id])
    skill.update(skill_params)
    redirect_to skill_path(skill)
  end

  private

  def skill_params
    params.require(:skill).permit(:title, :description, :category_id)
  end
end
