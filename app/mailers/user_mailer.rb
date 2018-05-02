class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @user = params[:user]
    @bill = params[:bill]
    @url  = 'http://example.com/login'
    mail(to: @user.email && @bill.email, subject: 'Cotización Gramma CS')
  end
end
