# frozen_string_literal: true

class UserMailer < ApplicationMailer # rubocop:todo Style/Documentation
  default from: 'generic@generic.com'

  def welcome_email
    @user = params[:user]
    @url  = 'railsjunction.com/login'
    mail(to: @user.email, subject: 'Welcome to Rails Junction')
  end
end
