class Event < ApplicationRecord
	validates :title,:tag, :scheduled_date, presence: true
	
	scope :complete_events, -> { where(complete: true) }
	scope :incomplete_events, -> { where(complete: false) }
	

end
