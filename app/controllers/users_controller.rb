class UsersController < ApplicationController

  # http://liamkaufman.com/blog/2013/02/27/adding-real-time-to-a-restful-rails-app/
  # https://github.com/ankane/searchkick

  def index
    @users = User.all
    # render 'layouts/application'
  end

  def login
  end

  def show
    @user = User.find(params[:id])
  end

  def signup
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
    @user = User.update(user_params)
    redirect_to @user
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
