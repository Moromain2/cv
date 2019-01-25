class ExperiencesController < ApplicationController
  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.save
    if @experience.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    @experience = Experience.find(params[:id])
    if @experience.update(experience_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    redirect_to root_path
  end

  private
  def experience_params
    params.require(:experience).permit(:company, :role, :start_date, :end_date, :location, :body)
  end
end
