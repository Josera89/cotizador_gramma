class BillsController < ApplicationController
  def index
    @bills = Bill.all
  end

  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.new(bills_params)
    if @bill.save
      redirect_to '/bills'
    else
      render 'new'
    end
  end

  private
  def bills_params
    params.require(:bill).permit(:specifications, :company, :email, :total, :agent)
  end

end
