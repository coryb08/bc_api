class NotificationsController < ApplicationController




  def index

    if params[:unread] == "true"
      @notifications = Notification.where({user_id: params[:user_id], unread: true})
    else
      @notifications = Notification.where({user_id: params[:user_id]})
    end
    render json: @notifications
  end

  def show
    @notification = Notification.find(params[:id])
    if @notification.user_id === params[:user_id].to_i
      redirect_to edit_notification_path(:unread => false)
    else
      render json: {errors: "You do not have permission to access this message"}
    end
  end

  def new
    @notification = Notification.new(
      :user_id => params[:user_id],
      :registration_id => params[:registration_id],
      :unread => true,
      :message => params[:message],
      :course_id => params[:course_id],
      :student_id => params[:student_id],
      :professor_id => params[:professor_id],
      :status => params[:status]
    )

    if @notification.save
      if params[:status] == "approved"
        redirect_to new_schedule_path(user_id: params[:user_id], course_id: params[:course_id])
      else
        render json: @notification
      end
    else
      render json: {errors: @notification.errors.full_messages}
    end
  end

  def edit

    @notification = Notification.find(params[:id])
    @notification.unread = params[:unread]
    render json: @notification
  end

  def destroy
    @notification = Notification.find(params[:id])
    @notification.destroy
  end



end
