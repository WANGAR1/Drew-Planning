class Event < ApplicationRecord
  belongs_to :user
  has_many :guests

  validates :name, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :location, presence: true
  
  validates :description, presence: true
end

