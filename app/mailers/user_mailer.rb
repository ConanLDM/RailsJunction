class UserMailer < ApplicationMailer
  default from: 'generic@generic.com'

  def welcome_email
    @user = params[:user]
    @url  = 'tbc'
    mail(to: @user.email, subject: 'Welcome to Rails Junction')
  end
end
