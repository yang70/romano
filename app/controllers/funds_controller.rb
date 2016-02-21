class FundsController < ApplicationController
  def show
    @fund = Fund.find(params[:id])
    @projects = @fund.projects
  end

  def index
    @funds = Fund.all
  end
end
