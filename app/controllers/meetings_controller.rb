class MeetingsController < ApplicationController

  def index

    @meetings = Meeting.all
    render json: @meetings
  end

  def create
    new_params = params.delete_if{|k| k=="action" || k=="controller"}

    @meeting = Meeting.new(new_params)

    if @meeting.save
      render json: @meeting
    else
      render json: {errors: @meeting.errors.full_messages}
    end
  end

  def update
    @meeting = Meeting.find(params[:id])
  end

  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy
  end

  private
  def meeting_params
    params.require(:meeting).permit(:name, :email, :year, :studentId)
  end

end
