class Event < ActiveRecord::Base

  has_many :rsvps

  validates :title, :venue, :date, presence: true
  validates :rsvp, inclusion: [true, false]

end
