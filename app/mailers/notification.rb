class Notification < ActionMailer::Base
    default from: 'from@example.com'

    def enquiry(user, enquiry)
        @user = user
        @enquiry = enquiry

        mail to: @user.email.to_s, bcc: 'mahi@dctacademy.com', subject: "#{@enquiry.name}, would want to get in Touch with you, Below follows the details!"
    end
end
