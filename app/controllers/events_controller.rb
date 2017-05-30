class EventsController < ApplicationController
  include Paperclip::Glue
  #before_action :login_required#, :except => :index
  before_action :authenticate_testuser!
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  #respond_to :html, :js
  skip_before_action :verify_authenticity_token
  
  def index
    @events = Event.where(start: params[:start]..params[:end])
  end

  def show
    @event = Event.find(params[:id])
    @reservation = Reservation.find_by(user_id: current_testuser.id, event_id: @event.id)
    if @reservation == nil 
      @reservation = Reservation.new
    end
  end

  def new

    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.new(event_params)
      #respond_to do |format|
    if @event.save

      # Sends email to user when event is created.
      NotificationMailer.notification_on_create(@event).deliver_later

     # format.html { redirect_to @event, notice: 'Event was successfully created.' }
    #  format.json { render :show, status: :created, location: @event }
  #else
    #format.html { render action: "new" }
    #format.json { render json: @event.errors, status: :unprocessable_entity }
    #end
    end
    
  end

  def update
    @event.update(event_params)
  end

  def destroy
    @event.avatar = nil
    
    #respond_to do |format|
     # if @event.destroy
    #format.html {redirect_to '', notice: 'Event was successfully deleted.' }
    #  end 
    #end  
    @event.destroy
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :description, :seats, :date_range, :start, :end, :color, :avatar, :user_id)
    end
end
