class UsersController < ApplicationController

  def index

    @users = User.all
    render json: @users
  end

  def create
    @user = User.new({
      :is_professor => params[:is_professor],
      :first_name => params[:first_name],
      :last_name => params[:last_name],
      :year => params[:year],
      :email => params[:email]
      })
    if @user.save

      puts("sessionssss", session[:current_user_id])
      if @user[:is_professor]
        redirect_to new_professor_path({
        :first_name => params[:first_name],
        :last_name => params[:last_name],
        :email => params[:email],
        :user_id => @user[:id]
        })
      else
        redirect_to new_student_path({
        :first_name => params[:first_name],
        :last_name => params[:last_name],
        :year => params[:year],
        :uid => params[:uid],
        :email => params[:email],
        :user_id => @user[:id]
        })
      end
    else
      puts("user errors")
      render json: {errors: @user.errors.full_messages}
    end
  end

  def show
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end
  #
  # private
  # def user_params
  #   params.require(:user).permit(:username, :password)
  # end

end
