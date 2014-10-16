class IncidentsController < ApplicationController
  before_filter :authenticate_user!, except: [:welcome]
  def index
    @incidents = Incident.all.order(created_at: :desc)
    @map_incidents = Incident.all.order(:created_at).limit(20)
    @hash = Gmaps4rails.build_markers(@map_incidents) do |incident, marker|
      marker.lat incident.latitude
      marker.lng incident.longitude
      marker.infowindow incident.description
    end

  end

  def new
    @incident = Incident.new
  end

  def create
    @incident = Incident.new(incident_params)
    @incident.user = current_user
    if @incident.save
      redirect_to @incident, notice: "Incident Added!"
    else
      render :new, notice: "There was an error."
    end
  end

  def show
    @incident = Incident.find(params[:id])
    @update = Update.new
    @updates = Update.where(incident_id: params[:id])
    @comment = Comment.new
    @comments = Comment.where(incident_id: params[:id])
  end

  def destroy
    @incident = Incident.find(params[:id])
    @incident.destroy
    flash[:success] = "Incident has been deleted"
    redirect_to incidents_path
  end

  def update
    @incident = Incident.find(params[:id])
    if @incident.update(incident_params)
      redirect_to @incident, notice: "Incident Updated!"
    else
      render @incident, notice: "There was an error."
    end
  end

  def welcome
    @incidents = Incident.all.order(:created_at).limit(20)
    @hash = Gmaps4rails.build_markers(@incidents) do |incident, marker|
      marker.lat incident.latitude
      marker.lng incident.longitude
      marker.infowindow incident.description
    end
  end

  private

  def incident_params
    params.require(:incident).permit(
      :address,
      :description,
      :incident_type_id,
      :incident_photos
    )
  end
end
