class ClockEventsController < ApplicationController

  def new
    @clock_event = current_teacher.clock_events.create(time_in: Time.now, status: 1)

    flash[:notice] =  'You have Clocked in'
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path)}
      format.json { render json: @clock_event }
    end
  end

  def update
    @clock_event = current_teacher.clock_events.last
    @clock_event.update(status: 2, time_out: Time.now)
    flash[:notice] =  'You have Clocked Out'

    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path)}
      format.json { render json: @clock_event }
    end
  end

  def index
    @clock_events = ClockEvent.all
  end

  def destroy
    @clock_event = ClockEvent.find(params[:id])
    @clock_event.destroy
    redirect_back(fallback_location: root_path)
  end
end
