class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    @hash = Gmaps4rails.build_markers(@project) do |project, marker|
      marker.lat project.latitude
      marker.lng project.longitude
      marker.infowindow project.name
    end
  end
end
