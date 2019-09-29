class UserMailer < ApplicationMailer
  def welcome
    @user = params[:user]
    @user = @user.lawyer

    mail(to: @user.email, subject: "Maitre #{@user.last_name} x Hellotenor : Bienvenue ")
  end
end
