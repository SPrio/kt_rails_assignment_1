class UsersController < ApplicationController

  def index
    @users = User.order(:name).all.limit 50

    respond_to do |format|
      format.html
      format.csv { send_data @users.to_csv }
      format.pdf { send_data @users.to_pdf }
    end
  end
  def send_mail
    @students = Student.all
    @receiver= {:email => "mahantasupriyo@gmail.com"}
    UserMailer.sample_email(@receiver, @students).deliver
    redirect_to users_index_path
  end
end
