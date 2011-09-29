class BankAdminController < ApplicationController
  def index
    @bank = Bank.find(session[:bank_id])
    @loans = Loan.all
  end

end
