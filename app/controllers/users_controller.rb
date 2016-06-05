class UsersController < ApplicationController

  def home_page
    render 'layouts/application'
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    @user.save
    redirect_to @user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end


  private
    def user_params
      params.require(:users).permit(
        :user, :password, :age, :email, :picture_url, :gender, :status
      )
    end
end
