# frozen_string_literal: true

class UserMailer < ApplicationMailer # rubocop:todo Style/Documentation
  default from: User::MAILER_FROM_EMAIL

  def welcome_email
    @user = params[:user]
    @url  = 'railsjunction.com/login'
    # @confirmation_token = confirmation_token

    mail(to: @user.email, subject: 'Welcome to Rails Junction')
  end
end
