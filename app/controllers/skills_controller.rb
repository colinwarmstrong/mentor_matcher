class SkillsController < ApplicationController
  before_action :require_admin, only: [:new, :create, :edit, :update, :destroy]

  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
    @students = @skill.find_students
    @mentors = @skill.find_mentors
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
    skill = Skill.find(params[:id])
    skill.destroy
    redirect_to skills_path
  end

  private

  def skill_params
    params.require(:skill).permit(:title, :description, :category_id)
  end
end
