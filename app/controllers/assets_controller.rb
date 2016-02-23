class AssetsController < ApplicationController

  def index
    @project = Project.find(params[:project_id])
    @funds = @project.funds
    @assets = @project.assets.paginate(:page => params[:page], :per_page => 8)
  end
end
