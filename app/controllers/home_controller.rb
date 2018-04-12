class HomeController < ApplicationController
  before_action :require_user, only: [:index, :show]

  def index
    @client = ""
  end
end
