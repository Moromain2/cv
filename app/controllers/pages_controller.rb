class PagesController < ApplicationController
  def home
    @experiences = Experience.all
    @skills = Skill.all
  end
end
