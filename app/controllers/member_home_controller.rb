class MemberHomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @portfolio = @user.funds
  end
end
