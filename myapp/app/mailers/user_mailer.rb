class UserMailer < ApplicationMailer
  default from: 'samrita@notinq.com'
  def registration_confirmation(user,link) 
    @user = user
    @link = link
    @message = 'whatever you want to say here!'
    mail(:from => "samrita@notinq.com", :to => user.email, :subject => "Thank you for registration" + " " + link)
    end   
end
