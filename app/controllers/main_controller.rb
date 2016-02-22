class MainController < ApplicationController

  def index
    @projects = Project.all
    @hash = Gmaps4rails.build_markers(@projects) do |project, marker|
      marker.lat project.latitude
      marker.lng project.longitude
      marker.infowindow '<h4><a class="map-link" href="/projects/' + project.id.to_s + '">' + project.name + '</a></h4>'
    end
    @year = Date.today.year
  end
end
