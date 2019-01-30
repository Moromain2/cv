class PagesController < ApplicationController
  def home
    @experiences = Experience.all
    @skills = Skill.all
  end

  def download_pdf
    send_file "#{Rails.root}/app/assets/docs/Romain-Mosser-CV.pdf", type: "application/pdf", x_sendfile: true
  end
end
