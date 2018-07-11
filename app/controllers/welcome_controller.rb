class WelcomeController < ApplicationController
  def index
    @upcoming_events = Event.where('scheduled_date>= ?', Date.current)
  end

  def search
    @event_titles = Event.ransack(title_cont: params[:q]).result(distinct: true)
    @event_tags = Event.ransack(tag_cont: params[:q]).result(distinct: true)
    # @event_scheduled_dates = Event.ransack(scheduled_date_cont: params[:q]).result(distinct: true)
    @event_scheduled_dates = Event.ransack(scheduled_date_eq: params[:qdate].to_s).result(distinct: true)

    respond_to do |format|
      format.html {}
      format.json {
          @event_titles = @event_titles.limit(5)
          @event_tags = @event_tags.limit(5)
        }
    end
  end

  private

  def to_certain_date (str)
    date = str.to_time.strftime('%Y-%m-%d')
  end
end
