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
    Attendance.find(params[:id]).destroy
    flash[:alert] = "You are no longer attending this event"
    refresh_page
  end

  def kick
    attendance = Attendance.find(params[:id])
    user = attendance.user
    attendance.destroy
    flash[:alert] = "Kicked #{user.username} from event"
    refresh_page
  end
end
