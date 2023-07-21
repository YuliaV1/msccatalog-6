# app/controllers/user_info_controller.rb

class UserInfoController < ApplicationController
  def new
    @user_info = UserInfo.new
  end

  def create
    @user_info = UserInfo.new(user_info_params)
    if @user_info.save
      redirect_to user_info_index_path, notice: 'User info was successfully created.'
    else
      puts @user_info.errors.full_messages # Виведе повідомлення про помилки валідації у консолі
      render :new
    end
  end

  def index
    @user_info = UserInfo.all
  end

  private

  def user_info_params
    params.require(:user_info).permit(:first_name, :last_name, :telephone_number, :user_id)
  end
end
