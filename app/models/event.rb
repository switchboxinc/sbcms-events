class Event < ActiveRecord::Base
  validates :title, :date, :venue, presence: true
  validates :rsvp, inclusion: [true, false], presence: true
end
