# frozen_string_literal: true

class UsersController < ApplicationController # rubocop:todo Style/Documentation
  before_action :authenticate_user!, only: [:edit, :destroy, :update]

  def show
    @user = User.find(params[:id])
    debugger
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(create_user_params)
    UserMailer.with(user: @user).welcome_email

    # UserInsertionWorker.perform_async(users)

    redirect_to @user

    if @user.save
      @user.send_confirmation_email!
      flash[:notice] = "User created successfully"
      redirect_to users_path, status: :unprocessable_entity
    else
      flash[:alert] = "User not created"
    end
  end

  def destroy
    current_user.destroy
    reset_session
    redirect_to root_path, notice: "Your account has been deleted."
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.authenticate(params[:user][:current_password])
      if @user.update(update_user_params)
        if params[:user][:unconfirmed_email].present?
          @user.send_confirmation_email!
          redirect_to root_path, notice: "Check your email for confirmation instructions."
        else
          redirect_to root_path, notice: "Account updated."
        end
      else
        render :edit, status: :unprocessable_entity
      end
    else
      flash.now[:error] = "Incorrect password"
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def create_user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def update_user_params
    params.require(:user).permit(:current_password, :password, :password_confirmation, :unconfirmed_email)
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
