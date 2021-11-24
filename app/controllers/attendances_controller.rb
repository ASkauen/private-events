class AttendancesController < ApplicationController
  def new
    event = Event.find(params[:id])
    attendance = current_user.attendances.build(event_id: event.id)
    if attendance.save
      flash[:notice] = "You are now attending this event"
      redirect_to event_path(event)
    else
      flash[:alert] = attendance.errors
      redirect_to event_path(event)
    end
  end

  def destroy
    Attendance.find_by(event_id: params[:id]).delete
    flash[:notice] = "You are no longer attending this event"
    redirect_to event_path(Event.find(params[:id]))
  end

end
