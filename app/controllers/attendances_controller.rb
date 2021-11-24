class AttendancesController < ApplicationController
  def new
    @attendance = current_user.attendances.build(attendance_params)
  end

  private
  def attendance_params
    params.require(:event).permit(:id)
  end

end
