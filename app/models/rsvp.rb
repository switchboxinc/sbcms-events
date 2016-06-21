class Rsvp < ActiveRecord::Base

  belongs_to :event

  validates :full_name, :email_address, presence: true

  accepts_nested_attributes_for :rsvp, reject_if: :all_blank

end
