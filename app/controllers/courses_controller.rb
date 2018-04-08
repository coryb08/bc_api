class CoursesController < ApplicationController

  def index
    @courses = Course.all
    render json: @courses
  end

  def show
    @course = Course.find(params[:id])
    render json: @course
  end

  def create
    @course = Course.new(:name => params[:name], :size => params[:size], :credits => params[:credits], :professor_id => params[:professor_id])
    if @course.save
      render json: @course
    else
      render json: {errors: @course.errors.full_messages}
    end
  end

  def update
    @course = Course.find(params[:id])
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
  end

  counter = 0
  def count(bool)

  end


  private
  def course_params
    params.require(:course).permit(:name, :email, :year, :studentId)
  end

end
