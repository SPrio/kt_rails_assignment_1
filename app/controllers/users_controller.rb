class UsersController < ApplicationController

  def index
    @users = User.all

    respond_to do |format|
      format.html
      format.csv { send_data @users.to_csv }
      format.pdf { send_data @users.to_pdf }
    end
  end
  
end
