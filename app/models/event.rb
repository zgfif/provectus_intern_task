class Event < ApplicationRecord
	validates :title,:tag, presence: true
	# ,,:scheduled_date
 #                    length: { minimum: 5 }
end
