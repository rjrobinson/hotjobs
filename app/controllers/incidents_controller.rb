class IncidentsController < ApplicationController
before_filter :authenticate_user! , except: [ :welcome ]
  def index
  end

  def new
    @incident = Incident.new
  end

  def create
    @incident = Incident.new(incident_params)
    @incident.user = current_user
    if @incident.save
      redirect_to @incident, notice: 'Incident Added!'
    else
      render :new, notice: 'There was an error.'
    end
  end

  def show
    @incident = Incident.find(params[:id])
  end

  def welcome
  end

  private

  def incident_params
    params.require(:incident).permit(
      :address,
      :description,
      :incident_type_id
    )
  end

end
