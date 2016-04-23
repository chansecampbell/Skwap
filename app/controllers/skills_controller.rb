class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def new
    @skill = Skill.new
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def create
      @skill = current_user.skills.new(skill_params)
      if @skill.save
          flash[:success] = "Your service has been listed!"
          redirect_to skills_path
      else
          render "new"
      end
  end

  def edit
  end

  def update
  end

  def destroy
  end




  private
      def skill_params
          params.require(:skill).permit(:title, :description, :response_time)
      end

end
