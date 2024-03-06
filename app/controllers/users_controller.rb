# frozen_string_literal: true

class UsersController < ApplicationController # rubocop:todo Style/Documentation
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    UserMailer.with(user: @user).welcome_email.deliver_later

    UserInsertionWorker.perform_async(users)

    redirect_to @user

    if @user.save
      flash[:notice] = "User created successfully"
      redirect_to users_path
    else
      flash[:alert] = "User not created"
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
