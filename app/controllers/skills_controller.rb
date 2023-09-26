class SkillsController < ApplicationController
    
  def index
    @skills = Skill.all 
    render :index
  end

  def create
    @skill = Skill.create(
      skill_name: params[:skill_name],
      student_id: current_user.id, 
    )
    render :show
  end 

  def show
    @skill = Skill.find_by(id: params[:id])
    render :show 
  end 

  def update
    @skill = Skill.find_by(id:params[:id])

    @skill.update(
      skill_name: params[:skill_name] || @skill.skill_name,
      # student_id: current_user.id || @skill.student_id,
    )
    render :show 
  end 

  def destroy
    @skill = Skill.find_by(id:params[:id])
    @skill.destroy 
    render json: {message:"Skill destroyed successfully"}
  end 
  
end
