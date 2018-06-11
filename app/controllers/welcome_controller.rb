class WelcomeController < ApplicationController
  # before_action :force_json, only: :autocomplete
  def index
  end
  def autocomplete
  	@events = Event.ransack(title_cont: params[:q]).result(distinct: true)
  	
  	respond_to do |format| 
	    format.html {}
	    format.json {
	        @events = @events.limit(5)
		}
	end 
  end

  def search
  	@events = Event.ransack(title_cont: params[:q]).result(distinct: true)
  end  

  private
  def force_json
  	request.format = :json
  end
end
