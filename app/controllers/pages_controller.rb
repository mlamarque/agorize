class PagesController < ApplicationController
  def home
    @users = User.all
    @skills = Skill.all
  end
end
