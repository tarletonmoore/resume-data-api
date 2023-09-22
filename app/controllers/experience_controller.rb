class ExperienceController < ApplicationController

  def index
    @experience = Experience.all 
    render :index
  end 

  def show
    @experience = Experience.find_by(id: params[:id])
    render :show
  end

  def create
    
    @experience = Experience.create(start_date: params[:start_date],
    end_date: params[:end_date],
        job: params[:job], 
        company: params[:company],
        studentID: params[:studentID]
      )
    
     render :show
    end

  def update
    @experience = Experience.find_by(id: params[:id])
    @experience.start_date = params[:start_date],
    @experience.end_date = params[:end_date],
    @experience.job = params[:job]
    @experience.company = params[:company,]
    @experience.studentID = params[:studentID]

    @experience.save
  end

  def destroy
    @experience = Experience.find_by(id: params[:id])
    @experience.destroy
  end





end




