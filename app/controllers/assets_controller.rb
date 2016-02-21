class AssetsController < ApplicationController

  def index
    @project = Project.find(params[:project_id])
    @funds = @project.funds
    @assets = @project.assets
  end
end
