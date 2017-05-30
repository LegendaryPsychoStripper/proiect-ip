class HomeController < ApplicationController
 #before_action :login_required#, :except => :index
 before_action :authenticate_testuser!
  def index
  end

  def my_events
  	# to do: evenimentele create de user + evenimentele marcate cu rezervat + evenimentele marcate cu interested
  	@events=Event.all
  end
end