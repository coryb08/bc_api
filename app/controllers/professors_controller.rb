class ProfessorsController < ApplicationController

  def index

    puts("in prof index")
    @professors = Professor.all
    render json: @professors
  end

  def new
    @professor = Professor.new({
      :first_name => params[:first_name],
      :last_name => params[:last_name],
      :email => params[:email],
      :user_id => params[:user_id]
      })
    if @professor.save
      render json: @professor
    else
      puts("prof errors")
      render json: {errors: @professor.errors.full_messages}
    end
  end

  def update
    @professor = Professor.find(params[:id])
  end

  def destroy
    @professor = Professor.find(params[:id])
    @professor.destroy
  end

  private
  def professor_params
    params.require(:professor).permit(:name, :email, :year, :studentId)
  end
end
