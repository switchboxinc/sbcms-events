class Rsvp < ActiveRecord::Base

  belongs_to :event

  validates :full_name, :email_address, presence: true

end
