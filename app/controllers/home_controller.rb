class HomeController < ApplicationController
  before_action :require_user, only: [:index, :show, :create, :new]

  def index
    @bills = Bill.new
  end

  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.new()
    if @bill.save
      redirect_to '/bills'
    else
      render 'new'
    end
  end

  private
  def bills_params
    # params.require(:bill).permit(:content)
  end
end
