class EducationsController < ApplicationController
  def index
    @educations = Education.all
    render :index
  end

  def create
    @education = Education.create(
      student_id: current_user.id,
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details]
    )
    render :show
  end

  def show
    @education = Education.find_by(id: params[:id])
    render :show
  end

  def update
    @education = Education.find_by(id: params[:id])
    @education.update(
      student_id: current_user.id,
      start_date: params[:start_date] || @education.start_date,
      end_date: params[:end_date] || @education.end_date,
      degree: params[:degree] || @education.degree,
      university_name: params[:university_name] || @education.university_name,
      details: params[:details] || @education.details
    )
    render :show
  end

  def destroy
    @education = Education.find_by(id: params[:id])
    @education.destroy
    render json: { message: "Education succesffuly deleted"}
  end
end
