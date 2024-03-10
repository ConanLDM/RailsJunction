# frozen_string_literal: true

class UserMailer < ApplicationMailer # rubocop:todo Style/Documentation
  default from: User::MAILER_FROM_EMAIL

  def welcome_email
    @user = params[:user]
    @url  = 'railsjunction.com/login'
    # @confirmation_token = confirmation_token

    mail(to: @user.email, subject: 'Welcome to Rails Junction')
  end

  def password_reset(user, password_reset_token)
    @user = user
    @password_reset_token = password_reset_token

    mail to: @user.email, subject: "How to reset your Password"
  end
end
