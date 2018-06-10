class Event < ApplicationRecord
	validates :title,:tag, presence: true
	# ,,:scheduled_date
  #                    length: { minimum: 5 }
  include PgSearch
	pg_search_scope :search_by_full_info, against: [:title, :tag, :scheduled_date],
    using: {
      tsearch: {
        prefix: true,
        negation: true,
        highlight: {
	        start_sel: '<b>',
	        stop_sel: '</b>',
      	}
      }
    }
end
