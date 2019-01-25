class SkillsController < ApplicationController
  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.save
    if @skill.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update(skill_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to root_path
  end

  private
  def skill_params
    params.require(:skill).permit(:title, :rating, :image, :category)
  end
end
