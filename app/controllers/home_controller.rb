class HomeController < ApplicationController
 #before_action :login_required#, :except => :index
 before_action :authenticate_testuser!
  def index
  end

  def my_events
  	# to do: evenimentele create de user + evenimentele marcate cu rezervat + evenimentele marcate cu interested
  	@events=Event.all
	#search:
  	#if params[:search]
    #@events = Event.search(params[:search]).order("created_at DESC")
  	#else
    #@events = Event.all.order('created_at DESC')
  	#end
  end
end