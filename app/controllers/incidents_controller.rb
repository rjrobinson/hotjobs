class IncidentsController < ApplicationController
before_filter :authenticate_user! , except: [ :welcome ]
  def index
  end

  def new
    @incident = Incident.new
  end

  def create
    binding.pry
    @incident = Incident.new(incident_params)
    if @incident.save
      redirect_to root_path, notice: 'Incident Added!'
    else
      render :new, notice: 'There was an error.'
    end
  end

  def show
  end

  def welcome
  end

  private

  def incident_params
    params.require(:incident).permit(
      :address,
      :description,
      :incident_type
    )
  end

end
