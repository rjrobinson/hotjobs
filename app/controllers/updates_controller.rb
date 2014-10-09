class UpdatesController < ApplicationController
  def new
  end

  def create
    @incident = Incident.find(params[:incident_id])
    @update = Update.new(update_params)
    @update.incident_id = @incident.id
      if @update.save
        redirect_to @incident, notice: 'Update reported.'
      else
        reditect_to @incident, notice: 'Not Updated. There was an error.'
      end
  end

  private

  def update_params
    params.require(:update).permit(:body).merge(user: current_user)
  end

end # of class
