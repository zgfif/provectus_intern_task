# class depends from user
class Event < ApplicationRecord
  belongs_to :user

  validates :title, :tag, :scheduled_date, presence: true
  scope :complete_events, -> { where(complete: true) }
  scope :incomplete_events, -> { where(complete: false) }

  ransacker :scheduled_date do
    Arel.sql('date(events.scheduled_date)')
  end
end
