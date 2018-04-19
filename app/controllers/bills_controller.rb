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

  def destroy
    @bill = Bill.find(params[:id])
    @bill.destroy
    respond_to do |format|
      format.html { redirect_to "/bills", notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def bills_params
    params.require(:bill).permit(:specifications, :company, :email, :total, :agent)
  end

end
