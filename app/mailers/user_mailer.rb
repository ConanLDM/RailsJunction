class UserMailer < ApplicationMailer
  default from: 'generic@generic.com'

  def welcome_email
    @user = params[:user]
    @url  = 'railsjunction.com/login'
    mail(to: @user.email, subject: 'Welcome to Rails Junction')
  end
end
