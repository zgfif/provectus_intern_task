class Event < ApplicationRecord
	validates :title,:tag, :scheduled_date, presence: true
	# ,,:scheduled_date
  #                    length: { minimum: 5 }

end
