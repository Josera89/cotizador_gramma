class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/home'
    else
      redirect_to '/signup'
    end
  end

  # def email_bill
  #   @user = User.find(session[:user_id])
  #   UserMailer.with(user: @user).welcome_email.deliver_later
  # end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
