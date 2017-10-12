class Room < ApplicationRecord
  belongs_to :user
	has_many :photos

	validates :home_type, presence: true
	validates :room_type, presence: true
	validates :accommodate, presence: true
end
