class HomeController < ApplicationController

  def index
    @users = User.order(:name).all.limit 50
    @employees = Employee.order(:name).all.limit 50
    respond_to do |format|
      format.html
      format.csv { send_data @users.to_csv }
      format.pdf { send_data @employees.to_pdf }
    end
  end

  def show
    @users = User.all
  end

  def send_mail
    @students = Student.all
    @receiver= {:email => "mahantasupriyo@gmail.com"}
    UserMailer.sample_email(@receiver, @students).deliver
    redirect_to home_index_path
  end
end
