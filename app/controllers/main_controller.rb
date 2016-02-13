class MainController < ApplicationController

  def index
    @projects = Project.all
    @hash = Gmaps4rails.build_markers(@projects) do |project, marker|
      marker.lat project.latitude
      marker.lng project.longitude
      marker.infowindow '<a href="/projects/' + project.id.to_s + '">' + project.name + '</a>'
    end
  end
end
