# frozen_string_literal: true

class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    puts params[:id]
    @event = Event.find(params[:id])
  end
end
