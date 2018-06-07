class EventsController < ApplicationController
	def index
		@events = Event.all
	end
	def new
		@event = Event.new
	end
	def create
		render: plain @event.params
	end
	private
		# def event_params
		# 	@event.permit(:title, :tag, :scheduled_date)
		# end
end
