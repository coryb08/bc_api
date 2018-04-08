class StudentsController < ApplicationController


  def index
    @students = Student.all
    render json: @students
  end

  def new
    @student = Student.new({
      :first_name => params[:first_name],
      :last_name => params[:last_name],
      :year => params[:year],
      :email => params[:email],
      :user_id => params[:user_id]
      })
    if @student.save
      @student[:uid] = @student[:first_name][0]+ @student[:last_name][0] + SecureRandom.hex(4) + @student[:id].to_s
      render json: @student
    else
      render json: {errors: @student.errors.full_messages}
    end
  end

  def update
    @student = Student.find(params[:id])

  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
  end



end
