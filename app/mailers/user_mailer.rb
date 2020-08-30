class UserMailer < ApplicationMailer
    def new_order_email(user)
        @user = user

        mail(to: @user.email, subject: "you just posted #{@user.name}")
    end
end
