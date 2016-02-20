class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @funds = @project.funds
    @assets = @project.assets
    @fund_percentage = @project.fund_percentage
    @construction_percentage = @project.construction_percentage
    @hash = Gmaps4rails.build_markers(@project) do |project, marker|
      marker.lat project.latitude
      marker.lng project.longitude
      marker.infowindow '<h4>' + project.name + '</h4>'
    end
  end
end
