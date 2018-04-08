class RegistrationsController < ApplicationController

  def index
    @registrations = Registration.all
    render json: @registrations
  end

  def create
    if !User.find(params[:user_id]).is_professor
      @professor_id = Course.find_by_id(params[:course_id]).professor_id
      @student_id = Student.find_by(user_id: params[:user_id]).id
      @professor_user_id = Professor.find_by_id(@professor_id).user_id
      @message = "A student has registered for your class"
      @registration = Registration.new(:user_id => params[:user_id], :course_id => params[:course_id], :professor_id => @professor_id, :student_id => @student_id, :status => "pending")
      if @registration.save
        redirect_to new_notification_path(:user_id => @professor_user_id, :registration_id => @registration.id, :message => @message, :professor_id => @professor_id, :course_id => params[:course_id], :student_id => @student_id, :status => "pending")

      else
        render json: {errors: @registration.errors.full_messages}
      end

    else
      render json: {errors: "must be a student"}
    end
  end

  def update
    if User.find(params[:user_id]).is_professor
      if params[:status] == "approved"
        @message = "Your registration was approved"
      elsif params[:status] == "denied"
        @message = "Your registration was not approved"
      elsif params[:status] == "dropped"
        @message = "You have been dropped from this class"
      end
      @registration = Registration.find(params[:id])
      @notification_id = Notification.find_by(registration_id: @registration.id).id
      @registration.status = params[:status]
      if @registration.save
        redirect_to new_notification_path(:id => @notification_id, :user_id => @registration.student_id, :message => @message, :course_id => @registration.course_id, :status => params[:status], :student_id => @registration.student_id, :professor_id => @registration.professor_id, :registration_id => @registration.id)

      else
        render json: {errors: @registration.errors.full_messages}
      end

    else
      render json: {errors: "must be a professor"}
    end
  end

  def destroy
    @registration = Registration.find(params[:id])
    @registration.destroy
  end

end
