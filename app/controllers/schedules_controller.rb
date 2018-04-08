class SchedulesController < ApplicationController

  def index
    @registrations = Registration.where({student_id: params[:student_id], status: "approved"})
    @schedules = @registrations.map do |reg|
      Meeting.where(course_id: reg[:course_id])
    end
    puts("sched ", @schedules)
  end

  def create
    @schedule = Schedule.new(:course_id => params[:course_id], :student_id => params[:student_id])

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
