class EventsController < ApplicationController
  include Paperclip::Glue
  #before_action :login_required#, :except => :index
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  #respond_to :html, :js
  skip_before_action :verify_authenticity_token
  
  def index
    @events = Event.where(start: params[:start]..params[:end])
  end

  def show
    @event = Event.find(params[:id])
  end

  def new

    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.new(event_params)
    @event.save
  end

  def update
    @event.update(event_params)
  end

  def destroy
    @event.destroy
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :description, :seats, :date_range, :start, :end, :color, :avatar)# :user_id)
    end
end
