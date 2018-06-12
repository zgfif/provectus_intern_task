class WelcomeController < ApplicationController
  # before_action :force_json, only: :autocomplete
  def index
    @upcoming_events = Event.where("scheduled_date>= ?", Date.current)
  end
 #  def autocomplete
 #  	@events = Event.ransack(title_cont: params[:q]).result(distinct: true)
 #  	# @event_tags = Event.ransack(tag_cont: params[:q]).result(distinct: true)
  	
 #  	respond_to do |format| 
	#     format.html {}
	#     format.json {
	#         @events = @events.limit(5)
	#         # @event_tags = @event_tags.limit(5)
	# 	}
	# end 
 #  end

  def search
  	# @events = Event.ransack(title_cont: params[:q]).result(distinct: true)
  	@event_titles = Event.ransack(title_cont: params[:q]).result(distinct: true)
  	@event_tags = Event.ransack(tag_cont: params[:q]).result(distinct: true)
  	# @event_scheduled_dates = Event.ransack(scheduled_date_cont: params[:q]).result(distinct: true)
  	respond_to do |format| 
	    format.html {}
	    format.json {
	        @event_titles = @event_titles.limit(5)
	        @event_tags = @event_tags.limit(5)
		}
	end 
  end  

  # private
  # def force_json
  # 	request.format = :json
  # end
end
