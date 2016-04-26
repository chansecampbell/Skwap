class SkillsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @q = Skill.search(params[:q])
    @skills = @q.result(distinct: true)
    @connections = Connection.all
    @categories = Skill::CATEGORIES
    
  end

  def new
    @skill = Skill.new
    @connections = Connection.all
    @categories = Skill::CATEGORIES
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def create
      @skill = current_user.skills.new(skill_params)
      if @skill.save
          flash[:success] = "Your service has been listed!"
          redirect_to new_skill_path(:anchor => "user-listings")
      else
          render "new"
      end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update(skill_params)
      flash[:success] = "Changes have been made"
      redirect_to new_skill_path(:anchor => "user-listings")
    else 
      render "edit"
    end
  end

  def destroy
  end

  private
      def skill_params
          params.require(:skill).permit(:title, :description, :response_time, :location, :category, :availability)
      end

end
