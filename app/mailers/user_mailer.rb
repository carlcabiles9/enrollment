class UserMailer < ApplicationMailer
    default from: 'test@test.com'

    def welcome_email
        @user = params[:user]
        @url  = 'localhost:3000/students'
        mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
