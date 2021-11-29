class InvitesController < ApplicationController
  def new
    invite = User.find(params[:from]).sent_invites.build(recipient_id: params[:to], event_id: params[:event])
    if invite.save
      refresh_page
    else
      flash[:alert] = "Error"
    end
  end

  def destroy
    Invite.find(params[:id]).delete
    flash[:alert] = "Invitation cancelled"
    refresh_page
  end

  def accept
    invite = Invite.find(params[:id])
    attendance = invite.recipient.attendances.build(event_id: invite.event.id)
    if attendance.save!
      flash[:notice] = "Invite accepted"
      invite.destroy
      refresh_page
    else
      flash[:alert] = "Error"
    end

  end

  def decline
    Invite.find(params[:id]).destroy
    flash[:alert] = "Invite declined"
    refresh_page
  end
end
