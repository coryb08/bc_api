class SchedulesController < ApplicationController

  def index
    schedule = {}
    params_to_scrub = ["id", "mon_end", "course_id"]
    if !User.find(params[:user_id]).is_professor
      student_id = Student.where(:user_id => params[:user_id])
      registrations = Registration.where({student_id: student_id, status: "approved"})
      registrations.map do |ele|
        schedule[Course.find(ele[:course_id])[:name]] = Meeting.where(course_id: ele[:course_id]).to_a.map!{|ele| ele.as_json.except(*params_to_scrub)}
      end
    else
      professor_id = Professor.where(:user_id => params[:user_id])
      courses = Course.where({professor_id: professor_id})
      courses.map do |course|
        schedule[course[:name]] = Meeting.where(course_id: course[:id]).to_a.map!{|ele| ele.as_json.except(*params_to_scrub)}
      end
    end
    render json: (schedule)
  end

  def new


    @schedule = Schedule.new(:course_id => params[:course_id], :user_id => params[:user_id])
    if @schedule.save
      render json: @schedule
    else
      render json: {errors: @schedule.errors.full_messages}
    end
  end

  def update
    @schedule = Schedule.find(params[:id])
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
  end


end
