# frozen_string_literal: true

class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    UserMailer.with(user: @user).welcome_email.deliver_later

    UserInsertionWorker.perform_async(users)

    redirect_to @user
  end
end
