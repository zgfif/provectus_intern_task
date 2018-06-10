class EventsController < ApplicationController
before_action :authenticate_user!, except: [:index,:show,:search]



	def index
		@events = Event.all
	end
	
	def show
		@event= Event.find(params[:id])
	end
	def search
		if params[:term]
		  @events = Event.search_by_full_info(params[:term])
		else
		  @users = Event.all
		end
	end

	def new
		@event = Event.new
	end

	def edit
		@event = Event.find(params[:id])
	end

	def create
  		@event = Event.new(event_params)

  		 if @event.save
  		redirect_to @event

  		else 
  			render 'new'

  		end
	end
	def update
		@event = Event.find(params[:id])

		if @event.update(event_params)
  		redirect_to @event

  		else 
  			render 'edit'

  		end
	end

	def destroy
		@event = Event.find(params[:id])
		if @event.destroy
			redirect_to events_path
		end
	end
	private
		 def event_params
		 	params.require(:event).permit(:title,:tag,:scheduled_date,:complete)
		 end
end
