class CapstonesController < ApplicationController
  def index
    @capstones = Capstone.all
    render :index
  end

  def show
    @capstone = Capstone.find_by(id: params[:id])
    render :show
  end

  def create
    @capstone = Capstone.create(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
      student_id: current_user.id,
    )
    render :show
  end

  def update
    @capstone = Capstone.find_by(id: params[:id])

    @capstone.update(
      name: params[:name] || @capstone.name,
      description: params[:description] || @capstone.description,
      url: params[:url] || @capstone.url,
      screenshot: params[:screenshot] || @capstone.screenshot,
    )
    render :show
  end

  def destroy
    @capstone = Capstone.find_by(id: params[:id])
    @capstone.destroy
    render json: { message: "You deleted the capstone" }
  end
end
