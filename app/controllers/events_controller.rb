class EventsController < ApplicationController
	before_action :find_tags, only: [:index, :show]
	before_action :find_event, only:[:show, :destroy]

  #MAYBE HAVE A DIFFERENT PAGE FOR EVENTS TODAY, EVENTS BY AREA (SF, EAST BAY, NORTH BAY, ETC), FREE EVENTS

  def index
  	@events = Event.all
  	#eventually we'll want to limit to a date range?
  	# @events = Event.where('start_date > ?', DateTime.now.utc).where('start_date < ?', DateTime.now.utc + 7.days)
  end

  def show
  end

  def create #WE MIGHT NOT NEED A CREATE ROUTE BECAUSE WE CAN / WILL BE CALLING CREATE FROM THE RAKE TASK...
  	#array = Event.get array of event data (thx nokogiri ^_^)
  	#array.each do |event|
	  	@event = Event.create(event_params)
	  	@event.save
  	#end
  end

  def destroy
  	@event.destroy
  	# redirect_to events_path	
  end

# =============================
# ==== PRIVATE METHODS ========
# =============================  
  private
  	def event_params
  		params.require(:event).permit(:start_date, :end_date, :start_time, :end_time, :address, :description, :cost, :lat, :long, :cit, :image_url)		
  	end	
  	
  	def find_tags
  		@tags
  	end

  	def find_event
			@event = Event.find_by_id(params[:id])  		
  	end

  	def format_data_for_input(event_params) #I FEEL LIKE THIS WILL ALL BE DONE IN THE RAKE TASK...
  			
  	end


end
