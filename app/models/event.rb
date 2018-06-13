class Event < ApplicationRecord
	validates :title,:tag, :scheduled_date, presence: true
	# ,,:scheduled_date
  #                    length: { minimum: 5 }
  	scope :complete_events, -> {where(complete: true)}
  	scope :incomplete_events, -> {where(complete: false)}
end
