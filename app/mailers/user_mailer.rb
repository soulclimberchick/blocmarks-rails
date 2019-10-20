class UserMailer < ApplicationMailer
  default from: 'from@example.com'

  def welcome_mail
    @user = params[:user]
    @url = 'https://leinberger-blocmarks.herokuapp.com'
    mail(to: @user.email, subject: 'Thanks for your submission')
  end
end
