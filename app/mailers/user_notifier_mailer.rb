class UserNotifierMailer < ApplicationMailer
    default :from => 'from@example.com'

    # send a signup email to the user, pass in the user object that   contains the user's email address
    def send_signup_email(user)
        @user = user
        mail( :to => @user.email, :subject => 'Thanks for signing up for our amazing app' )
    end
end
