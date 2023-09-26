class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
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
                                    details: params[:details],
                                    student_id: current_user.id)

    render :show
  end

  def update
    @experience = Experience.find_by(id: params[:id])
    @experience.update(
      start_date: params[:start_date] || @experience.start_date,
      end_date: params[:end_date] || @experience.end_date,
      job: params[:job] || @experience.job,
      company: params[:company] || @experience.company,
      details: params[:details] || @experience.details,
      # student_id: params[:student_id] || @experience.student_id,
    )

    render :show
  end

  def destroy
    @experience = Experience.find_by(id: params[:id])
    @experience.destroy
    render json: { message: "deleted successfully" }
  end
end
