class Guest < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :email, presence: true
  validates :rsvp_status, presence: true
end
