class UsersController < ApplicationController
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
    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def login
    # Check if the user is already logged in, and if so, redirect to a different page
    if current_user
      redirect_to user_info_index_path, notice: 'You are already logged in.'
    end
  end

  def process_login
    user = User.find_by(email: params[:email], password: params[:password])
    if user
      redirect_to user_info_index_path, notice: 'Login successful.'
    else
      redirect_to login_path, alert: 'Invalid email or password.'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
