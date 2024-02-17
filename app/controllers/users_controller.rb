class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    UserMailer.with(user: @user).welcome_email.deliver_later

    redirect_to @user
  end
end
