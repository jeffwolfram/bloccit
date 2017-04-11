class UsersController < ApplicationController
before_action :require_sign_in, only: [:index, :edit, :update]
before_action :correct_user, only: [:edit, :update]

  def new
    @user = User.new
  end
  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    if @user.save
      flash[:notice] = "Welcome to Bloccit #{@user.name}!"
      create_session(@user)
      redirect_to root_path
    else
      flash.now[:alert] = "There was an error creating your account. Please try again."
      render :new
    end
  end
  def show
    @user = User.find(params[:id])
      @posts = @user.posts.visible_to(current_user)
  end
  def index
    @users = User.all
  end

end
