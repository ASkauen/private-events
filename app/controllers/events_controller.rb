# frozen_string_literal: true

class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action only: [:edit, :update, :destroy] do
    event = Event.find(params[:id])
    if current_user != event.creator
      flash[:alert] = "Unauthorized"
      redirect_to event_path(event)
    end
  end

  def index
    @events = Event.all
  end

  def show
    puts params[:id]
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    event = Event.find(params[:id])
    if event.update(event_params)
      flash[:notice] = "Event updated"
      redirect_to event_path(event)
    else
      flash[:alert] = "Something went wrong"
      redirect_to edit_event_path
    end
  end

  def destroy
    Event.find(params[:id]).destroy
    flash[:alert] = "Event deleted"
    redirect_to root_path
  end

  private
  def event_params
    params.require(:event).permit(:title, :desc, :date)
  end
end
