class StudentsController < ApplicationController
  def create
    student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      phone: params[:phone],
      bio: params[:bio],
      linkedin: params[:linkedin],
      twitter: params[:twitter],
      personal_blog: params[:personal_blog],
      online_resume: params[:online_resume],
      github: params[:github],
      photo: params[:photo],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
