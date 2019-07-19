class UserMailer < ApplicationMailer
  default :from => "mahantasupriyo@gmail.com"

  def sample_email(receiver,students)
    @students = students
    @receiver=receiver
    mail(to: @receiver[:email], subject: 'Sample Email')
  end
end
